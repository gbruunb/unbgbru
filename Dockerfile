# Step 1: Build
FROM node:18 AS builder
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

# Step 2: Run
FROM node:18
WORKDIR /app
COPY --from=builder /app /app
EXPOSE 3000
CMD ["node", "build"]
