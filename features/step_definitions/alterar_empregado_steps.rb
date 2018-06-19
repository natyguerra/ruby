Dado("que selecionei um Empregado Existente na página de Informações do Empregado") do                     
	visit ('http://opensource.demo.orangehrmlive.com/')
	fill_in('txtUsername', :with => "admin")
  	fill_in('txtPassword', :with => "admin")
  	click_button('btnLogin')
  	visit('http://opensource.demo.orangehrmlive.com/index.php/pim/viewEmployeeList/reset/1')
  	fill_in('empsearch_id', :with => "0044")
  	click_button('searchBtn')
  	find(:xpath,'//*[@id="resultTable"]/tbody/tr/td[2]/a').click
end                                                                                                                                                

Quando("eu realizar a alteração dos dados do Empregado na tela de Detalhes Pessoais") do
	click_button('btnSave')
	fill_in('personal_txtEmpMiddleName', :with => "de Souza")
	find(:xpath,'//*[@id="personal_optGender_2"]').click
	click_button('btnSave')
end 

Então("é informado que a alteração foi salva com sucesso") do
	assert_text('Successfully Saved')
end  


