#language: pt
#utf-8

@alterarempregado
Funcionalidade: Alterar Empregado existente
Eu como Usuário do site ORANGEHRM
Quero acessar a página de Informações do Empregado
Para alterar os dados de um empregado existente

Cenario: Realizar alteração de Empregado com sucesso
	Dado que selecionei um Empregado Existente na página de Informações do Empregado
	Quando eu realizar a alteração dos dados do Empregado na tela de Detalhes Pessoais
	Então é informado que a alteração foi salva com sucesso