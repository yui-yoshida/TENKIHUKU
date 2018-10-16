class PicturesController < ApplicationController
before_action :set_picture, only: [:show, :edit, :update, :destroy]

  def new
    if params[:back]
      @picture = Picture.new(picture_params)
    else
      @picture = Picture.new
    end
  end

  def create
    Picture.create(picture_params)
    redirect_to pictures_path
  end

  def edit
  end

  def index
    @pictures = Picture.all
  end

  def show

  end

  def edit

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
    render :new if @picture.invalid?
  end

  private

  def picture_params
    params.require(:picture).permit(:content, :image, :image_cache)
  end

  def set_picture
    @picture = Picture.find(params[:id])
  end

end
