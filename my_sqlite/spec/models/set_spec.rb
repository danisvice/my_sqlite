require 'spec_helper'

describe MySqliteRequest do

    describe 'set' do
      it 'sets update data' do
        request = MySqliteRequest.new  
        request.set(name: 'Jane')
        expect(request.update_data).to eq({name: 'Jane'})
      end
    end
  
end