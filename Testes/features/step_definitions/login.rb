
Dado('que esteja na tela de login') do
    @Login = Login.new
    @Login.load
  end
  
  Quando('o usuário preencher os campos {string} e {string}') do |string, string2|
    @Login.email.set string
    @Login.password.set string2
    @Login.button_login.click
    
  end
  
  Então('mensagem é exibida {string}') do |string|
    expect(@Login).to have_content string
  end