require 'rails_helper.rb'

RSpec.describe "HospedeDestroy", type: :request do
  context "when exist a hospede persisted" do
    it "should change status to inactive" do
      hospede_created = FactoryBot.create(:hospede)
      delete hospede_path(hospede_created.id)
      hospede = Hospede.find(hospede_created.id)
      expect(hospede).to be_inactive
    end
  end

end
