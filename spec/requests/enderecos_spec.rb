require 'rails_helper'

RSpec.describe "Enderecos", type: :request do
  describe "GET /new" do
    it "returns http success" do
      @hospede = FactoryBot.create(:hospede)
      get new_hospede_endereco_path(@hospede.id)
      expect(response).to have_http_status(200)
    end
  end

end
