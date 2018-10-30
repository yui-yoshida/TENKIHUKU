class UsersController < ApplicationController
  before_action :authenticate_user!, :only => [:show, :following, :followerd, :mypage, :favorite]

  def show
    @user = User.find(params[:id])
    @pictures = @user.pictures
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
