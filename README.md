# Digital portfolio

GraphQL API for a profile, skills, work experience, and projects. Apollo Sandbox is at [http://localhost:3000/graphql](http://localhost:3000/graphql).

## Development

Requires Node.js, pnpm, and Docker (for Postgres).

```bash
cp .env.example .env
pnpm install
docker compose up -d db
pnpm db:deploy
pnpm start:dev
```

`pnpm db:deploy` creates the tables and loads the seed data from migrations. `pnpm db:reset` drops the database and applies the migrations again.

## Production

Starts Postgres and the application. Migrations run when the app container starts.

```bash
cp .env.example .env
docker compose up --build
```

The container owns port 3000, so `pnpm start:dev` cannot run at the same time.
