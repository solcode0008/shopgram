class Users::SessionsController < Devise::SessionsController
  def new_guest
    user = User.guest
    sign_in user   # ユーザーをログインさせる
    redirect_to shops_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end