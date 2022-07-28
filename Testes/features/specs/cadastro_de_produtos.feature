#language: pt
@cadastroProdutos
Funcionalidade: Cadastrar um novo produto
    Como administrador do e-commerce Front - ServeRest
    Quero cadastrar um novo produto 
    Para os usuários poderem comprar

    Contexto: 
        Dado que esteja na tela de cadastrado de produto
        E logado como administrador
        
    Esquema do Cenário: Validar o cadastro de um novo produto
        Quando o administrador preencher os campos "<Nome>", "<Preço>", "<Descrição>" e "<Quantidade>"
        Então é exibido mensagem "<msg>"
        Exemplos:
        |Nome                |Preço     |Descrição                          |Quantidade  |msg                                 |
        |                    |300       |Melhor Mouse para o seu gameplay   |1000        |Nome não pode ficar em branco       |
        |Mouse Gamer         |          |Melhor Mouse para o seu gameplay   |1000        |Preco é obrigatório                 |
        |Mouse Gamer         |300       |                                   |1000        |Descricao não pode ficar em branco  |
        |Mouse Gamer         |300       |Melhor Mouse para o seu gameplay   |            |Quantidade é obrigatório            |
        |Mouse Gamer         |300       |Melhor Mouse para o seu gameplay   |1000        |Já existe produto com esse nome     |