# Menggunakan base image Node.js versi 14
FROM node:14

# working directory untuk container adalah /app
WORKDIR /app

# Menyalin seluruh source code ke working directory di container
COPY . .

# Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# port yang digunakan aplikasi
EXPOSE 8080

# menjalankan server dengan perintah npm start
CMD ["npm", "start"]