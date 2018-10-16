class PicturesController < ApplicationController
before_action :set_picture, only: [:show, :edit, :update]

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

  def show

  end

  def edit

  end

  def update
    
    if @picture.update(picture_params)
      redirect_to picture_path(@picture.id)
    else
      render "edit"
    end
  end
  private

  def picture_params
    params.require(:picture).permit(:content, :image, :image_cache)
  end

  def set_picture
    @picture = Picture.find(params[:id])
  end

end
