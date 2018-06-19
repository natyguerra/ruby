Dado("que estou na página de Adicionar Empregado") do                     
	visit ('http://opensource.demo.orangehrmlive.com/')
	fill_in('txtUsername', :with => "admin")
  	fill_in('txtPassword', :with => "admin")
  	click_button('btnLogin')
  	visit('http://opensource.demo.orangehrmlive.com/index.php/pim/addEmployee')
end                                                                   
                                                                             
Quando("eu preencher os campos obrigatórios da tela com dados válidos") do
	fill_in('firstName', :with => "Natália")
	fill_in('lastName', :with => "Souza")
	click_button('btnSave')
end 

Então("é exibido a tela de detalhes do Empregado") do
	assert_text('Personal Details')
end                                                                         