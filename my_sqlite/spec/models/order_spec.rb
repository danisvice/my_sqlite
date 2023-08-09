require 'spec_helper'

describe MySqliteRequest do

    describe 'order' do
      it 'sets order parameters' do
        request = MySqliteRequest.new
        request.order(:asc, :name)
        expect(request.orders).to eq([:asc, :name]) 
      end
    end
    
end