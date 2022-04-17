#Descargar la imagen 
FROM node:12.14.1-alpine
#Crear el directorio 
WORKDIR /usr/src/app
#Ubicacion de los archivos 
COPY package*.json ./
#Instalacion de dependencias
RUN npm install
#copiar los archivos de app
COPY . .
#El puerto que se va a exponer
EXPOSE 1935
EXPOSE 8000
#Run app
CMD ["npm","start"]