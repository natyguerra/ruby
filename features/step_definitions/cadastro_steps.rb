Dado("que estou na tela registration do site demoqa") do
  visit('http://demoqa.com/registration/')
end

Quando("preencher os campos da tela com dados válidos") do
  fill_in('name_3_firstname', :with => "Marilene")
  fill_in('name_3_lastname', :with => "Guerra")
  find(:xpath,'//*[@id="pie_register"]/li[3]/div/div/input[1]').click
  fill_in('phone_9', with: 5511959221234)
  fill_in('username', with: "marileneguerra")
  fill_in('email_1', with: "marileneguerra@gmail.com")
  fill_in('password_2', with: "Reigad@10")
  fill_in('confirm_password_password_2', with: "Reigad@10")
  find(:xpath,'//*[@id="pie_register"]/li[14]/div/input').click
  
end

Então("é informado que o cadastro foi realizado com sucesso") do
  assert_text('Thank you for your registration')
end