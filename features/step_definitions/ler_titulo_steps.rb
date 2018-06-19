Dado("que eu estou no Home do site Inmetrics") do
  visit "http://www.inmetrics.com.br/"
end

Quando("eu acessar a aba Quem Somos") do
  click_link('Quem Somos', match: :first)
end

Entao("eu valido o texto LADO A LADO COM NOSSOS CLIENTES") do
  assert_text('LADO A LADO COM NOSSOS CLIENTES')
end