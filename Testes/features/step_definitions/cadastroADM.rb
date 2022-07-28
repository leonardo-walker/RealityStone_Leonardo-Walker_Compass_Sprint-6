Dado('que esteja na tela de cadastro para administrador') do
  @ADMRegister = ADMRegister.new
  @ADMRegister.load
  end
  
  Quando('o administrador preencher os campos {string}, {string} e {string}') do |string, string2, string3|
    @ADMRegister.nome.set string
    @ADMRegister.email.set string2
    @ADMRegister.password.set string3
    @ADMRegister.checkbox.click 
    @ADMRegister.button.click 
  end

  Então('deverá ser exibido {string}') do |string|
    expect(@ADMRegister).to have_content string
  end
  
  Dado('que esteja na tela de cadastro') do
    
  end
  
  Quando('o administrador preencher campos {string}, {string} e {string} com email ja cadastrado') do |string, string2, string3|
    @ADMRegister.nome.set string
    @ADMRegister.email.set string2
    @ADMRegister.password.set string3
    @ADMRegister.checkbox.click 
    @ADMRegister.button.click
  end

  Então('deve ser exibido {string}') do |string|
    expect(@ADMRegister).to have_content string
  end

  Quando('o administrador preencher os campos {string}, {string} e {string} com email ja cadastrado') do |string, string2, string3|
  pending # Write code here that turns the phrase above into concrete actions
end