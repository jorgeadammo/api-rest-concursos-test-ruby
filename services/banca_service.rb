module Banca
    include HTTParty
    base_uri 'http://localhost:8095'
    format :json
end