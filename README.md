# iris-jms-sample

1. Clone/git pull the repo into any local directory

```
$ git clone https://github.com/yurimarx/iris-jms-sample.git
```

2. coloque a licença iris.key na pasta irislicense (se não existir a pasta, crie na raiz do projeto)

3. Open the terminal in this directory and run:

```
$ docker-compose build
```

4. Run the IRIS container with your project:

```
$ docker-compose up -d
```

5. IMPORTANTE: Entre em cada classe do src\dc\Demo via VSCode e inclua um espaco em branco e salve novamente para compilar cada uma das classes deste diretorio

6. No management portal abra a produção JMSProduction

7. Inicie a produção

8. Veja se a mensagem chegou na fila jms indo em http://localhost:8161/admin/ > Clica em Queues > Clica em FOO.BAR e veja o conteudo da mensagem: "oi JMS, aqui se apresenta o InterSystems IRIS"

9. Se quiser, tambem tem uma classe em src\dc\Demo\JMSClient para testar envio de msg via classe normal do ObjectScript