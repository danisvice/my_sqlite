require 'spec_helper'

describe MySqliteRequest do

    describe '#run' do
  
      let(:request) { MySqliteRequest.new }  
      let(:sample_data) { [{id: 1, name: 'Alice'}] }
  
      before do 
        allow(request).to receive(:read_csv).and_return(sample_data)
      end
  
      it 'executes the full request workflow' do
        request.insert('users').values(name: 'Bob')
        result = request.run
        expect(result).to match_array([{id: 1, name: 'Alice'}, {name: 'Bob'}])
      end
  
    end
  
end