require 'rails_helper'

RSpec.describe 'GET /users/auth/steam/', type: :request do
  before(:each) do
    visit '/users/auth/steam'
  end

  it 'should get data from omniauth' do
    expect(page).to have_content('Cogs')
  end
end
