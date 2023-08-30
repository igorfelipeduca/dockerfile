# Use a base image
FROM node:14

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o package.json e o package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instala as dependências do projeto
RUN npm install

# Copia todo o código fonte para o diretório de trabalho
COPY . .

# Expõe a porta 3000
EXPOSE 3000

# Comando para iniciar a aplicação quando o container for executado
CMD ["yarn", "dev"]
