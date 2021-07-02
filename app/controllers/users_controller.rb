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
    if @user.update(params.permit(:myself, :name, :introduction))
      flash.now[:notice] = "情報を更新しました"
      redirect_to users_show_url
    end
  end

end
