# Usa la imagen base de Node.js
FROM node:18

# Establece el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia los archivos del proyecto al contenedor
COPY package*.json ./
COPY app.js ./

# Instala las dependencias
RUN npm install

# Expone el puerto en el que la aplicación escuchará
EXPOSE 3000

#CMD ["node", "app.js"]
ENTRYPOINT ["node", "app.js"]