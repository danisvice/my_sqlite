require 'spec_helper'

describe MySqliteRequest do

    describe 'update' do
      it 'sets update table name' do
        request = MySqliteRequest.new
        request.update('users')
        expect(request.updates).to eq('users')
      end
    end
  
end