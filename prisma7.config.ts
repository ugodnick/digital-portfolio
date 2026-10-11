import 'dotenv/config';
import { defineConfig } from 'prisma/config';

const user = process.env['POSTGRES_USER'];
const password = encodeURIComponent(process.env['POSTGRES_PASSWORD'] ?? '');
const database = process.env['POSTGRES_DB'];
const host = process.env['POSTGRES_HOST'] ?? 'localhost';
const port = process.env['POSTGRES_PORT'] ?? '5432';
const databaseUrl = `postgresql://${user}:${password}@${host}:${port}/${database}`;

export default defineConfig({
  schema: 'prisma/schema.prisma',
  migrations: {
    path: 'prisma/migrations',
  },
  datasource: {
    url: databaseUrl,
  },
});
