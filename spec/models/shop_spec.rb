require 'rails_helper'

RSpec.describe Shop, type: :model do
  let(:shop) { create(:shop) }

  describe 'バリデーション' do
    context 'title' do
      it 'titleが存在' do
        shop.title = 'サンプル店舗'
        expect(shop).to be_valid
      end
      
      it 'titleが空白' do
        shop.title = ' '
        expect(shop).to be_invalid
        expect(shop.errors[:title]).to include("can't be blank")
      end
    end

    context 'body' do
      it 'bodyが存在' do
        shop.body = 'この店はカレーがおすすめです'
        expect(shop).to be_valid
      end
      
      it 'bodyが空白' do
        shop.body = ' '
        expect(shop).to be_invalid
        expect(shop.errors[:body]).to include("can't be blank")
      end
    end

    context 'image_id' do
      it 'image_idが存在' do
        shop.image_id = 'f14abfd4a8b900c273097f2bc58b3a6d24bf0364c53d7c2943'
        expect(shop).to be_valid
      end
      
      it 'image_idが空白' do
        shop.image_id = nil
        expect(shop).to be_invalid
        expect(shop.errors[:image]).to include("can't be blank")
      end
    end
  end
end
