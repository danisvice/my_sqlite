require 'spec_helper'

describe MySqliteRequest do

    describe 'join' do
      it 'sets join parameters' do
        request = MySqliteRequest.new
        request.join(:user_id, 'orders', :id)  
        expect(request.join).to eq([:user_id, 'orders', :id])
      end
    end
  
end