# frozen_string_literal: true


# Pegar informações de produtos

Dado('que o usuario consulte informacoes de todos os produtos') do
   @get_produtos_url = Produts_request.new
   @assert= Assertions.new
    
 end
 
Quando('ele realizar a pesquisa de produtos') do
    @list_produtos=  @get_produtos_url.find_produts
  end

  Entao('uma lista de produtos deve retornar {int}') do |codigo_esperado|
    puts @list_produtos
    @assert.request_sucess(@list_produtos.code,@list_produtos.message)
    end
# Cadastrar Produto


   Dado('que o usuario cadastre um produto') do
    @login_url = Users_request.new
    @post_url = Produts_request.new
    @assert= Assertions.new
  end


  Quando('ele pegar o token') do
    @login_users = @login_url.login
    @token= @login_users['authorization'] 
    puts "Usuário com token: #{@token}"
  end


  Quando('ele coloca as informacoes') do
    @create_produts = @post_url.create_produts(@token)
 
  end

  Entao('o cadastro deve ser concluido {int}') do |codigo_esperado|
    @assert.request_created(@create_produts.code,@create_produts.message)
    @assert.mensagem_cadastro_sucesso(@create_produts["message"])
    puts @create_produts
  end


# Deletar Produto

Dado('que o usuario delete um produto') do
  @login_url = Users_request.new
  @delete_url = Produts_request.new
  @assert= Assertions.new
end

Quando ('ele pegar o token2') do 
    @login_users = @login_url.login
    @token= @login_users['authorization'] 
    @create_produts = @delete_url.create_produts(@token)
    @user_id = @create_produts['_id'] 

end 

E('ele deleta o produto') do
  @delete_produts = @delete_url.delete_produto(@user_id,@token)
  puts @delete_produts
end

Entao('a exclusao deve ser concluida {int}') do |codigo_esperado|
  @assert.request_sucess(@delete_produts.code,@delete_produts.message)
  @assert.mensagem_deletar_sucesso(@delete_produts["message"])
end

# Atualizar Produto

Dado('que o usuario altere informacoes do produto') do
  @login_url = Users_request.new
  @update_url = Produts_request.new
  @assert= Assertions.new
end

Quando('ele pegar o token de login') do
  @login_users = @login_url.login
  @token= @login_users['authorization'] 
  @create_produts = @update_url.create_produts(@token)
  @user_id = @create_produts['_id'] 
end

E('ele envia as novas informacoes do produto') do
  @update_produts =  @update_url.update_produts(@user_id,@token)
  puts @update_produts
end

Entao('as informacoes do produto devem ser alteradas {int}') do |codigo_esperado|
  @assert.request_sucess(@update_produts.code,@update_produts.message)
  @assert.mensagem_atualizar_sucesso(@update_produts["message"])
end