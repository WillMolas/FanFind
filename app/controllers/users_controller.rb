class UsersController < ApplicationController
  def show
    @user = current_user
    set_meta_tags title: "#{@user.username.capitalize}",
    description: 'Watch upcoming FIFA World Cup matches with like-minded fans who support your team.
    Find events near you or create your own.',
    keywords: 'world cup, FIFA, matches, fans, soccer, football,
    soccer fans, football fans, events, meet up, find fans,
    team, football team',
    og: {
      description: 'Team up to watch the FIFA World Cup. Find events near you or create your own,
      chat with other fans, and share posts.',
      type: 'mobile app',
      url: 'www.fan-find.com',
      image: 'metatag-photo.png'
    }
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
    params.require(:user).permit(:username, :avatar, :team)
  end
end
