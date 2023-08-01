describe 'agrupando os metodos de verbo POST' do
    it 'test - adicionando uma banca' do
        new_banca = {
            nome: "Banca do Brazil 777",
            apelido: "BCB777",
            telefoneFixo: "61988888888",
            endereco: "Sei la o local",
            data: "2023-08-01",
            ativo: true
        }
        @new_banca = JSON.generate(new_banca)

        @request = Banca.post('/api-cnc/banca',
            :body => @new_banca,
            :headers => {'Content-Type' => 'application/json'}
        )
        expect(@request.code).to eql(201)
        expect(@request["data"]["id"]).not_to be nil
        expect(@request["data"]['nome']).to eq(new_banca[:nome])
        expect(@request["data"]['apelido']).to eq(new_banca[:apelido])
        expect(@request["data"]['telefoneFixo']).to eq(new_banca[:telefoneFixo])
        expect(@request["data"]['endereco']).to eq(new_banca[:endereco])
        expect(@request["data"]['ativo']).to eq(new_banca[:ativo])
        expect(@request["data"]['data']).to eq(new_banca[:data])
        puts @request
    end
end