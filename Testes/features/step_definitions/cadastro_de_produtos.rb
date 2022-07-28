Dado('que esteja na tela de cadastrado de produto') do
  @Login = Login.new
  @Login.load
  @Login.email.set 'leoadm@adm.com'
  @Login.password.set '123'
  @Login.button_login.click
  @CadastroProdutos = CadastroProdutos.new
  @CadastroProdutos.button_enter_register.click

end

Dado('logado como administrador') do
  @CadastroProdutos = CadastroProdutos.new
end

Quando('o administrador preencher os campos {string}, {string}, {string} e {string}') do |string, string2, string3, string4|
  @CadastroProdutos.name_product.set string
  @CadastroProdutos.price.set string2
  @CadastroProdutos.description.set string3
  @CadastroProdutos.quantity.set string4
  @CadastroProdutos.button_register_products.click
end

Então('é exibido mensagem {string}') do |string|
  expect(@CadastroProdutos).to have_content string
end