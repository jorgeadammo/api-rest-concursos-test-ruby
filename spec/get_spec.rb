describe 'agrupando os metodos de verbo GET' do
    it 'test - listando todas as bancas' do
        @bancas = Banca.get('/api-cnc/banca')
        puts @bancas
        puts "--------------------------"
    end
    it 'test - verificando uma banca' do
        @banca = Banca.get('/api-cnc/banca/2')
        expect(@banca.code).to eq(200)
        expect(@banca['id']).to eq(2)
        expect(@banca['nome']).to eq("Instituto Brasileiro")
        expect(@banca['apelido']).to eq("IBRAE@@@@@@")
        expect(@banca['telefoneFixo']).to eq("61988888888")
        expect(@banca['endereco']).to eq("Brasília")
        expect(@banca['ativo']).to eq(true)
        expect(@banca['data']).to eq("2020-02-21")
        puts @banca
        puts "--------------------------"
    end
end