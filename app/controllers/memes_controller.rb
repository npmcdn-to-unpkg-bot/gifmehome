require "meme_generator"

class MemesController < ApplicationController

  expose :photo

  expose :meme

  def new

  end

  def show

  end

  def create
    path = photo.image.path(:medium)
    s = MemeGenerator.generate(path, params[:high_caption], params[:low_caption])
    meme = photo.memes.create!(image: File.open(s), low_caption: params[:low_caption], high_caption: params[:high_caption])
    redirect_to photo_meme_url(photo, meme)
  end

  def preview
    path = photo.image.path(:medium)
    s = MemeGenerator.generate(path, params[:high_caption], params[:low_caption])
    send_file(s, type: photo.image_content_type)
  end

end
