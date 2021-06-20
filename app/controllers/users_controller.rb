class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def profile
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(params.require(:user).permit(:name,:selfintr))
      flash[:success] = "Profile updated"
      redirect_to @user
    end
  end

end
