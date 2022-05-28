require 'spec_helper'

describe 'ショップ一覧' do
  let(:user) { create(:user) }

  specify 'レイアウト' do
    visit shops_path
    expect(page).to have_css('h1', text: 'ショップ一覧')
  end
end