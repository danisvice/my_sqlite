require 'spec_helper'

describe '#initialize' do
    it 'sets default attribute values' do
      request = MySqliteRequest.new
      expect(request.table).to be_nil
      expect(request.columns).to be_nil
      expect(request.where).to be_empty
      expect(request.join).to be_nil
      expect(request.orders).to be_nil
      expect(request.inserts).to be_nil
      expect(request.insert_data).to be_empty
      expect(request.updates).to be_nil
      expect(request.update_data).to be_nil
      expect(request.deletes).to be_falsey
    end
  end

end