FROM oven/bun:1

WORKDIR /app

# Copy package + lock file
COPY package.json bun.lock ./

# Install dependencies
RUN bun install

# Copy everything else
COPY . .

# Build NestJS
RUN bun run build

EXPOSE 3000

CMD ["bun", "run", "start:prod"]