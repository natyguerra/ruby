#language: pt
#utf-8

@cadastro
Funcionalidade: Cadastrar Usuário
Eu como Usuário do site demoqa
Quero acessar a página de registro
Para efetuar o cadastro

Cenario: Realizar cadastro com sucesso
	Dado que estou na tela registration do site demoqa
	Quando preencher os campos da tela com dados válidos
	Então é informado que o cadastro foi realizado com sucesso