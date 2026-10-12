export function databaseUrlFromEnv(
  env: NodeJS.ProcessEnv = process.env,
): string {
  const user = env['POSTGRES_USER'];
  const password = encodeURIComponent(env['POSTGRES_PASSWORD'] ?? '');
  const database = env['POSTGRES_DB'];
  const host = env['POSTGRES_HOST'] ?? 'localhost';
  const port = env['POSTGRES_PORT'] ?? '5432';

  if (!user || !database) {
    throw new Error('POSTGRES_USER and POSTGRES_DB must be set');
  }

  return `postgresql://${user}:${password}@${host}:${port}/${database}`;
}
