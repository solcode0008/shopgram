require 'spec_helper'

describe 'トップページ' do
  specify 'レイアウト' do
    visit root_path
    expect(page).to have_css('p', text: 'shopgram')
    expect(page).to have_css('a', text: 'ログイン')
    expect(page).to have_css('a', text: '新規登録')
  end
end