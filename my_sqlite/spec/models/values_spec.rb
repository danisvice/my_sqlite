describe MySqliteRequest do

    describe 'values' do
      it 'sets insert data' do
        request = MySqliteRequest.new
        request.values(name: 'John')
        expect(request.insert_data).to eq({name: 'John'})
      end
    end
  
end