# Usa a imagem openjdk versão 11 como base
FROM openjdk:11

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o arquivo OlaUnicamp.java para o diretório de trabalho no contêiner
COPY OlaUnicamp.java /app/OlaUnicamp.java

# Compila o arquivo Java usando o javac
RUN javac OlaUnicamp.java

# Comando padrão a ser executado quando um contêiner baseado nesta imagem for iniciado
CMD ["java", "OlaUnicamp"]
