class RelationshipsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @user = User.find(params[:relationship][:followed_id])
    current_user.follow!(@user)
    redirect_to controller: 'users', action: 'show', id:@user.id
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow!(@user)
    redirect_to controller: 'users', action: 'show', id:@user.id
  end
end
