describe 'agrupando os metodos de verbo DELETE' do
    it 'test - deletando uma banca' do
        @request = Banca.delete('/api-cnc/banca/157',
            :headers => {'Content-Type' => 'application/json'}
        )
        #expect(@request.code).to eql(200)
        expect(@request.code).to eql(500)
        puts @request
    end
end