class Home < SitePrism::Page
    set_url '/'

    element :logo, 'img[class="imagem"]'

end

class Login <SitePrism::Page
    set_url '/login'
    element :email, '#email'
    element :password, '#password'
    element :button_login, 'button[type="submit"]'
end

class Register <SitePrism::Page
    set_url '/cadastrarusuarios'
    element :nome, '#nome'
    element :email, '#email'
    element :password, '#password'
    element :button, :xpath, '//*[@id="root"]/div/div/form/div[5]/button'
    
end

class ADMRegister <SitePrism::Page
    set_url '/cadastrarusuarios'
    element :nome, '#nome'
    element :email, '#email'
    element :password, '#password'
    #element :checkbox, 'input[type="checkbox"]'
    #element :checkbox, :xpath, '//*[@id="administrador"]'
    #element :checkbox, 'checkbox[type="checkbox"]'
    element :checkbox, '#administrador'
    element :button, :xpath, '//*[@id="root"]/div/div/form/div[5]/button'
end

class CadastroProdutos <SitePrism::Page
    set_url '/admin/cadastrarprodutos'
    element :name_product, '#nome'
    element :price, '#price'
    element :description, '#description'
    element :quantity, '#quantity'
    element :button_enter_register, '#root > div > div > p.row > div:nth-child(4) > div > div > a'
    element :button_register_products, :xpath, '//*[@id="root"]/div/div/div/form/div[6]/div/button' 
end