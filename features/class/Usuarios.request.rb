class Users_request
    def find_user
        Users.get('/usuarios')
    end

def create_user
    @dados= UserDados.new
    Users.post('/usuarios', body: @dados.user_dados.to_json)
end

    def uptade_user_request(id)

        @dados= UserDados.new
        Users.put("/usuarios/#{id}", body: @dados.user_dados.to_json)
        end
    
    def delete_user(id)
        Users.delete("/usuarios/#{id}")
    end

    def login
        @login_dados= UserDados.new
        Users.post('/login', body: @login_dados.login_dados.to_json)
     end
end


