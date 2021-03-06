class UsersController < ApplicationController
  before_action :authenticate_user!, :only => [:show, :following, :followerd, :mypage, :favorite]
  # after_create :notify_new_record
  def show
    @user = User.find(params[:id])
    @pictures = @user.pictures.page(params[:page]).per(20).order('created_at DESC')
  end

  def following
    @user = User.find(params[:id])
    @users = @user.following
    render 'following'
  end

  def followers
    @user = User.find(params[:id])
    @users = @user.followers
    render 'followers'
  end

  def mypage
    @user = current_user
    @pictures = @user.pictures.page(params[:page]).per(20).order('created_at DESC')
  end

  def favorite
    @user = current_user
    @pictures = @user.favorite_pictures.page(params[:page]).per(20).order('created_at DESC')
  end

  private

  def user_check
    @user = User.find(params[:id])
    unless current_user == @user
      redirect_to pictures_path, notice:"投稿者以外は編集できません"
    end
  end
end
