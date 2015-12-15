class PhotosController < ApplicationController

  expose :photos

  def index

  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to new_photo_url
    else
      render :new
    end
  end

  def photo_params
    params.require(:photo).permit(:image, :name)
  end
  private :photo_params

  def photo
    @photo
  end
  helper_method :photo

end
