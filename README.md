## 🤖️ Spark Naive-Bayes Classifier

Construindo um classificador Naive-Bayes para determinar o sentimento de um comentário.

## ⚙️ Configurando ambiente

1. Instalando um container com `pyspark` e `jupyter lab`.
   (site https://hub.docker.com/r/jupyter/pyspark-notebook)

   ```bash
    docker pull jupyter/pyspark-notebook
   ```

2. Inicializando o ambiente de trabalho.

   ```bash
        docker run \
        -it \
        --rm \
        -p 8888:8888 \
        -p 4040:4040 \
        -v "`pwd`":/home/jovyan/work \
        jupyter/pyspark-notebook
   ```

   Descrevendo melhor o comando temos :

   ```bash
    # Temos que mapear nosso diretorio local de trabalho para um diretório interno do container, de modo que alterações
    # feitas dentro do container (nesta pasta escolhida) sejam gravadas no nosso diretorio local.
    
    -v <diretorio>:/home/jovyan/work
    # <diretorio> representa seu diretorio local de trabalho.
   ```

   ```bash
    # Para acessar o jupyter notebook e o dashboard do Spark a partir do browser temos que abrir algumas portas do container.
    
    -p 8888:8888 -p 4040:4040
    # Acessar `localhost:8888` na nossa máquina, estaremos acessando o servidor Jupyter na porta 8888 interna do container.
   ```

   ```bash
    # Iniciar o container no modo interativo
    -it
   ```

   ```bash
    # Container deve ser encerrado ao fechar o servidor Jupyter.
    --rm
   ```

   Para facilitar esse processo escrevi esse comando no arquivo `inicia.sh`.

   