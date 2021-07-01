class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def profile
    @user = current_user
  end

  def mypage
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(params.permit(:myself, :name, :introduction))
    redirect_to users_show_url
  end

end
