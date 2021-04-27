# Projeto_Educ_PFA1
Projeto contendo modulos existentes em um banco de dados MySQL(Docker)

##### Instruções:

Para executar, siga os seguintes passos:

1. Crie uma rede para rodar os containers

```sh
docker network create pfa
```

2. Execute o mysql

```sh
docker run --rm -d --network pfa --name mysql edicostasp/pfa-docker-mysql
```

3. Execute o node

```sh
docker run --rm -d --network pfa --name node edicostasp/pfa-docker-node
```

4. Execute o nginx na porta 8080

```sh
docker run --rm -d --network pfa -p 8080:80 --name nginx edicostasp/pfa-docker-nginx
```

5. Acessar pelo navegador o endereço http://localhost:8080
