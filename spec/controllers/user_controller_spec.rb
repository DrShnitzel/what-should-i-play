require 'rails_helper'

RSpec.describe UserController, type: :controller do

  describe "GET #recommendations" do
    it "returns http success" do
      get :recommendations
      expect(response).to have_http_status(:success)
    end
  end

end
