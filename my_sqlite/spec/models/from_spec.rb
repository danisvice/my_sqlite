require 'spec_helper'

describe MySqliteRequest do

    describe 'from' do
      it 'sets the table name' do
        request = MySqliteRequest.new
        request.from('users')
        expect(request.table).to eq('users') 
      end
    end
  
end