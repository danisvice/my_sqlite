require 'spec_helper'

describe MySqliteRequest do

    describe '#read_csv' do
  
      let(:request) { MySqliteRequest.new }
      let(:csv_data) { [{id: 1, name: 'Alice'}] }
  
      it 'reads data from the CSV file' do
        allow(CSV).to receive(:read).and_return(csv_data)
        result = request.send(:read_csv, 'users')
        expect(result).to eq(csv_data)
      end
  
    end
  
end