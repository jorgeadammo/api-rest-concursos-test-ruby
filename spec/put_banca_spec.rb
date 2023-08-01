describe 'agrupando os metodos de verbo PUT' do
    it 'test - atualizando uma banca' do
        updated_banca = {
            nome: "Banca do Brazil 888",
            apelido: "BCB888",
            telefoneFixo: "61988888333",
            endereco: "Sei la o local po",
            data: "2022-08-01",
            ativo: false
        }
        @updated_banca = JSON.generate(updated_banca)

        @request = Banca.put('/api-cnc/banca/157',
            :body => @updated_banca,
            :headers => {'Content-Type' => 'application/json'}
        )
        expect(@request.code).to eql(200)
        expect(@request['nome']).to eq(updated_banca[:nome])
        expect(@request['apelido']).to eq(updated_banca[:apelido])
        expect(@request['telefoneFixo']).to eq(updated_banca[:telefoneFixo])
        expect(@request['endereco']).to eq(updated_banca[:endereco])
        expect(@request['ativo']).to eq(updated_banca[:ativo])
        expect(@request['data']).to eq(updated_banca[:data])
        puts @request
    end
end