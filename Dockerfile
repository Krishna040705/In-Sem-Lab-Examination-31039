# Stage 1: Build
FROM node:18

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Run preview
EXPOSE 4173
CMD ["npm", "run", "preview", "--", "--host", "0.0.0.0"]
