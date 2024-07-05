class Produts_request
    def find_produts
        Users.get('/produtos')
    end

    def create_produts(token)
         @dados= UserDados.new
         Users.post('/produtos', body: @dados.criar_produto.to_json,
         headers: Users.headers.merge('Authorization': "#{token}"))
    end
    
    def delete_produto(id,token)
        Users.delete("/produtos/#{id}",headers: Users.headers.merge('Authorization': "#{token}"))
    end
    
    def update_produts(id,token)
        @dados= UserDados.new
        Users.put("/produtos/#{id}", body: @dados.criar_produto.to_json,
        headers: Users.headers.merge('Authorization': "#{token}"))
   end



end


