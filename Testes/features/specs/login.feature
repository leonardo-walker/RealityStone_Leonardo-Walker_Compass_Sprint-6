#language: pt
@Login
Funcionalidade: Login de usuário
    Como usuário do e-commerce Front - ServeRest
    Quero realizar login 
    Para usar a aplicação

    Contexto: 
        Dado que esteja na tela de login

    Esquema do Cenário: Validar o login de usuários
        Quando o usuário preencher os campos "<Digite seu email>" e "<Digite sua senha>"
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu email      |Digite sua senha |msg                               |
        |                      |@Teste123        |Email é obrigatório               |
        |nanate1043@kahase     |@Teste123        |Email deve ser um email válido    |
        |nanate1043@kahase.com |@Teste12345      |Email e/ou senha inválidos        |
        |nanate1043@kahase.com |                 |Password não pode ficar em branco |
        |nanate1043@kahase.com |@Teste123        |                                  |