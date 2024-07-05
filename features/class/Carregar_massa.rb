module CarregarMassa
    def self.carregar_massa(nome)
        criar_user= File.read("#{Dir.pwd}/features/support/data/#{nome}.json")
        JSON.parse(criar_user)
    end

end


