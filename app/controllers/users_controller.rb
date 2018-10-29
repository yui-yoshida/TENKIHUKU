class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def following
    @user = User.find(params[:id])
    @users = @user.following
  end

  def followers
    @user = User.find(params[:id])
    @users = @user.followers
  end

  def mypage
    @user = current_user
    @pictures = @user.pictures
  end

  def favorite
    @user = current_user
    @pictures = @user.favorite_pictures
  end
end
