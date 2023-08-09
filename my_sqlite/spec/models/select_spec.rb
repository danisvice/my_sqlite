require 'spec_helper'

describe MySqliteRequest do

    describe 'select' do
      it 'sets columns for single column name' do
        request = MySqliteRequest.new  
        request.select(:id)
        expect(request.columns).to eq([:id])
      end
  
      it 'sets columns for multiple column names' do
        request = MySqliteRequest.new
        request.select([:id, :name])
        expect(request.columns).to eq([:id, :name])
      end
    end
  
end