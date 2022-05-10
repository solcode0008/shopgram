require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  context 'ユーザー名のバリデーション' do
    it 'ユーザー名が存在' do
      user.username = 'Tony Stark'
      expect(user).to be_valid
    end
    
    it 'ユーザー名が空白' do
      user.username = ' '
      expect(user).to be_invalid
      expect(user.errors[:username]).to include("can't be blank")
    end
  end
end
