class UserDados
    def user_dados
        dados= CarregarMassa.carregar_massa('Criar_usuario')
        dados['nome']= Faker::Name.name
        dados['email']= Faker::Internet.email(domain: 'example.com')
        dados['password']= Faker::Internet.password
        dados
    end

    def login_dados
        login_dados= CarregarMassa.carregar_massa('Login')
        login_dados['email'] = "fulano@qa.com"
        login_dados['password']= "teste"
        login_dados
    end

    def criar_produto
        criar_produto= CarregarMassa.carregar_massa('Criar_produto')
        criar_produto['nome'] = Faker::Commerce.product_name
        criar_produto['preco'] = Faker::Commerce.price(range: 100..1000, as_string: false)  
        criar_produto['descricao'] = Faker::Lorem.sentence(word_count: 10)
        criar_produto['quantidade'] = Faker::Number.between(from: 1, to: 1000)  
        criar_produto
    end


end
        
