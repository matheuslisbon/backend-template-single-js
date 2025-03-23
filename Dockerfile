# Usa a imagem oficial do Node.js como base
FROM node:23

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia os arquivos de dependências para o contêiner
COPY package.json package-lock.json ./

# Instala as dependências
RUN npm install

# Copia o restante do código para dentro do contêiner
COPY . .

# Instala o nodemon
RUN npm install -g nodemon

# Expõe a porta que a aplicação vai rodar
EXPOSE 3000

# Comando para rodar a aplicação com o nodemon
CMD ["nodemon", "server.js"]
