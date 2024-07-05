module Users 
    include HTTParty
    base_uri 'http://localhost:3000/'
    format :json
    headers 'Content-Type': 'application/json'
end


