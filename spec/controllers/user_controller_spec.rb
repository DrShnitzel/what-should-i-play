require 'rails_helper'

RSpec.describe UserController, type: :controller do

  describe "GET #recommendations" do
    it "returns http success" do
      user = FactoryGirl.create(:user)
      sign_in user
      get :recommendations
      expect(response).to have_http_status(:success)
    end
  end

end
