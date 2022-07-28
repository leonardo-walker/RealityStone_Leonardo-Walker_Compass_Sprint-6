Dado('que o usuário esteja na tela de cadastro') do
    @Register = Register.new
    @Register.load
  end
  
  Quando('o usuário preencher os campos {string}, {string} e {string}') do |string, string2, string3|
    @Register.nome.set string
    @Register.email.set string2
    @Register.password.set string3
    @Register.button.click
  end

  Então('a mensagem é exibida {string}') do |string|
    expect(@Register).to have_content string
  end

  Quando('o usuário preencher campos {string}, {string} e {string} com email ja cadastrado') do |string, string2, string3|
    @Register.nome.set string
    @Register.email.set string2
    @Register.password.set string3
    @Register.button.click
  end

  Então('a  mensagem é exibida {string}') do |string|
    expect(@Register).to have_content string
  end