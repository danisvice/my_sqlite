require 'spec_helper'

describe MySqliteRequest do

    describe 'insert' do
      it 'sets insert table name' do
        request = MySqliteRequest.new
        request.insert('users')
        expect(request.inserts).to eq('users')
      end
    end
  
end