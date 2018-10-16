class PicturesController < ApplicationController
  def new
    @picture = Picture.new
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

  private

  def picture_params
    params.require(:picture).permit(:content, :image, :image_cache)
  end
end
