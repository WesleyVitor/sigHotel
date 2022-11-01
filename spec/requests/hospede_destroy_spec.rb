require 'rails_helper.rb'

RSpec.describe "HospedeDestroy", type: :request do
  context "when exist a hospede persisted" do
    let(:hospede_created){ FactoryBot.create(:hospede)}
    it "should change status to inactive" do
      delete hospede_path(hospede_created.id)
      hospede = Hospede.find(hospede_created.id)
      expect(hospede).to be_inactive
    end
  end

  context "when not exist a hospede persisted" do
    it "should hospede finded be nil" do
      hospede = FactoryBot.build(:hospede)
      delete hospede_path(1)
      hospede = Hospede.find_by_id(1)
      expect(hospede).to be_nil  
    end
  end
  


end
