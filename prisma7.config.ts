import 'dotenv/config';
import { defineConfig } from 'prisma/config';
import { databaseUrlFromEnv } from './src/database/connection-string.js';

const databaseUrl = databaseUrlFromEnv();

export default defineConfig({
  schema: 'prisma/schema.prisma',
  migrations: {
    path: 'prisma/migrations',
  },
  datasource: {
    url: databaseUrl,
  },
});
