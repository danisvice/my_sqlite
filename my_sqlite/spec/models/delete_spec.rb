require 'spec_helper'

describe MySqliteRequest do

    describe '#delete' do
      it 'sets delete flag to true' do
        request = MySqliteRequest.new
        request.delete
        expect(request.deletes).to be true
      end
    end
  
end