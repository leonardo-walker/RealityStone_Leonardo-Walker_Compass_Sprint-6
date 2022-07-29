#language: pt
@allTests
@Cadastro
Funcionalidade: Cadastro de usuário
    Como usuário do e-commerce Front - ServeRest
    Quero realizar cadastro 
    Para logar na aplicação

    Contexto: 
        Dado que o usuário esteja na tela de cadastro

    Esquema do Cenário: Validar o cadastro de usuários
        Quando o usuário preencher os campos "<Digite seu nome>", "<Digite seu email>" e "<Digite sua senha>"
        Então a mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu nome |Digite seu email      |Digite sua senha |msg                                |
        |                |nanate1044@kahase.com |@Teste123        |Nome não pode ficar em branco      |
        |Pedro           |                      |@Teste123        |Email é obrigatório                |
        |Pedro           |nanate1044@kahase     |@Teste123        |Email deve ser um email válido     |
        |Pedro           |nanate1044@kahase.com |                 |Password não pode ficar em branco  |
        |Pedro           |nanate1044@kahase.com |@Teste123        |Cadastro realizado com sucesso     |
    
    Cenário: fazer registro com email já cadastrado
        Dado que esteja na tela de cadastro
        Quando o usuário preencher campos "<Digite seu nome>", "<Digite seu email>" e "<Digite sua senha>" com email ja cadastrado  
        Então a  mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu nome |Digite seu email      |Digite sua senha |msg                            |
        |Leonardo        |nanate1043@kahase.com |@Teste123        |Este email já está sendo usado |
    
   