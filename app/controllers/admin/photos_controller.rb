class Admin::PhotosController < ApplicationController

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  layout 'admin'

  expose :photos
  expose :photo, attributes: :photo_params

  expose :recent_photos do
    photos.order(created_at: :desc).limit(10)
  end

  def index

  end

  def new

  end

  def create
    if photo.save
      redirect_to admin_photos_path
    else
      render 'new'
    end
  end

  private
  def photo_params
    params.require(:photo).permit(:name, :image)
  end

end
