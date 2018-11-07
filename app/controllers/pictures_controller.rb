class PicturesController < ApplicationController
before_action :set_picture, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!, :only => [:new, :create, :edit, :show, :update, :destroy, :confirm, :index]
before_action :user_check, only: [:edit, :destroy]


  def new
    if params[:back]
      @picture = Picture.new(picture_params)
    else
      @picture = Picture.new
    end
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
    if @picture.save
      redirect_to pictures_path,notice: "TENKIHUKUを作成しました"
    else
      render "new"
    end
  end

  def edit
  end

  def index

    @pref = current_user.prefecture_code.to_s
    @lat = Prefecture.find(@pref).lat.to_s
    @long = Prefecture.find(@pref).long.to_s
    @weather = ForecastIO.forecast(@lat, @long, params: {units: 'si'})['currently']['icon']
    @temperature = ForecastIO.forecast(@lat, @long, params: {units: 'si'})['currently']["temperature"]
    @pictures = Picture.all
    @pictures = Picture.page(params[:page]).per(20).order('created_at DESC')
  end

  def show
    @favorite = current_user.favorites.find_by(picture_id: @picture.id)
  end


  def update

    if @picture.update(picture_params)
      redirect_to picture_path(@picture.id), notice:"TENKIHUKUを編集しました"
    else
      render "edit"
    end
  end

  def destroy
    @picture.destroy
    redirect_to pictures_path, notice:"TENKIHUKUを削除しました"
  end

  def confirm
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
    render :new if @picture.invalid?
  end

  private

  def picture_params
    params.require(:picture).permit(:content, :image, :image_cache, :start_time)
  end

  def set_picture
    @picture = Picture.find(params[:id])
  end

  def user_check
    @picture = Picture.find(params[:id])
    unless current_user.id == @picture.user_id
      redirect_to pictures_path, notice:"投稿者以外は編集できません"
    end
  end

end
