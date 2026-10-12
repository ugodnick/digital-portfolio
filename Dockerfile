FROM node:22-bookworm-slim

WORKDIR /app

RUN apt-get update \
  && apt-get install -y --no-install-recommends openssl ca-certificates \
  && rm -rf /var/lib/apt/lists/*

RUN corepack enable && corepack prepare pnpm@11.24.0 --activate

COPY package.json pnpm-lock.yaml pnpm-workspace.yaml ./
RUN pnpm install --frozen-lockfile

COPY prisma ./prisma
COPY prisma7.config.ts nest-cli.json tsconfig.json tsconfig.build.json ./
COPY src ./src

RUN POSTGRES_USER=build POSTGRES_PASSWORD=build POSTGRES_DB=build \
  pnpm exec prisma generate --config prisma7.config.ts \
  && pnpm build

EXPOSE 3000

ENTRYPOINT ["sh", "-c", "pnpm exec prisma migrate deploy --config prisma7.config.ts && exec node dist/main.js"]
