require 'rails_helper'

RSpec.describe User, type: :model do
  describe '.from_omniauth' do
    let!(:auth) { OmniAuth.config.mock_auth[:steam] }

    context 'when user exists' do
      let!(:user) { create(:user) }

      it 'is expected to find one' do
        expect(User.from_omniauth(auth)).to eq(user)
      end

      it 'is expected not to create new user' do
        expect { User.from_omniauth(auth) }
          .not_to change { User.count }
      end
    end

    context 'when user doesn\'t exist' do
      it 'is expected to create one' do
        expect { User.from_omniauth(auth) }
          .to change { User.count }.from(0).to(1)
      end
    end
  end
end
