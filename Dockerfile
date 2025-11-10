# Imagen base oficial de Node.js
FROM node:18-alpine

# Crear directorio de trabajo
WORKDIR /app

# Copiar package.json y package-lock.json
COPY package*.json ./

# Instalar dependencias
RUN npm install --production

# Copiar el resto del código
COPY . .

# Exponer el puerto 3010
EXPOSE 3010

# Comando de inicio
CMD ["node", "index.js"]
