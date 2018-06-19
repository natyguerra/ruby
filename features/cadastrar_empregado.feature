#language: pt
#utf-8

@cadastrarempregado
Funcionalidade: Adicionar Novo Empregado
Eu como Usuário do site ORANGEHRM
Quero acessar a página de Adicionar Empregado
Para cadastrar um novo empregado com sucesso

Cenario: Realizar cadastro de empregado com sucesso com dados obrigatórios válidos
	Dado que estou na página de Adicionar Empregado
	Quando eu preencher os campos obrigatórios da tela com dados válidos
	Então é exibido a tela de detalhes do Empregado