# Blog with Django

Olá, seja bem vindo!<br>
Esse projeto foi criado graças ao livro "Aprenda Django 3 com Exemplos" do autor Antonio Melé a fins de estudo e aprendizado.<br>
Eu fiz algumas alterações para deixar do meu jeito, é claro. Mas eu recomendo que comprem esse livro e estudem django por ele, vale muito a pena.

## Instalando dependencias do Projeto


- Crie um ambiente virtual com o comando:<br>
    `$ python3 -m venv ./venv`

- Ative o ambiente virtual com:<br>
    `$ source ./venv/bin/activate`

- Rode o requirements.txt para instalar as dependencias:<br>
    `$ pip install -r requirements.txt`
      
- Inicie o server de desenvolviento do Django:<br>
    `$ python manage.py runserver`

## Docker

```sh
docker build . -t blog-django

docker run -p 8000:8000 blog-django

```