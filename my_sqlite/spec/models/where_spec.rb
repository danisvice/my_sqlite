require 'spec_helper'

describe MySqliteRequest do

    describe 'where' do
      it 'adds a where criteria' do
        request = MySqliteRequest.new
        request.where(:age, 25)
        expect(request.where).to eq([[:age, 25]]) 
      end
    end
  
end