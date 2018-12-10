class PicturesController < ApplicationController
before_action :set_picture, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!, :only => [:new, :create, :edit, :show, :update, :destroy, :confirm, :index]
before_action :user_check, only: [:edit, :destroy]

  def new
      @picture = Picture.new
  end

  def create
    prefecture = Prefecture.find(current_user.prefecture_code.to_s)
    apparent_temperature = prefecture.current_temperature
    @picture = current_user.pictures.build(picture_params)
    @picture.setting_weather_status(apparent_temperature)
    @picture.setting_start_time
    if @picture.save
      redirect_to pictures_path, notice: "TENKIHUKUを作成しました"
    else
      render "new"
    end
  end

  def edit
  end

  def index
    @prefecture = Prefecture.find(current_user.prefecture_code.to_s)
    @apparent_temperature = @prefecture.current_temperature
    @weather = @prefecture.today_weather
    @temperature_high = @prefecture.temperature_high
    @temperature_low = @prefecture.temperature_low
    @rain_possibility = @prefecture.rain_possibility
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

  def tomorrow_index
    @prefecture = Prefecture.find(current_user.prefecture_code.to_s)
    @apparent_temperature = @prefecture.current_temperature
    @weather = @prefecture.today_weather
    @temperature_high = @prefecture.temperature_high
    @temperature_low = @prefecture.temperature_low
    @rain_possibility = @prefecture.rain_possibility
    @pictures = Picture.all
    @pictures = Picture.page(params[:page]).per(20).order('created_at DESC')
  end

  private

  def picture_params
    params.require(:picture).permit(:content, :image, :start_time)
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
