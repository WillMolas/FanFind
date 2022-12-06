class UsersController < ApplicationController
  def show
    @user = current_user
    set_meta_tags title: "#{@user.username.capitalize}"
  end

  def edit
    @user = current_user
    set_meta_tags title: "Edit Profile"
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:username, :avatar)
  end
end
