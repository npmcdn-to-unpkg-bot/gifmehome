class AnimalsController < ApplicationController

  expose :items do
    Photo.where.not(name: nil).order(:name).group_by { |e| e.name[0].downcase }
  end

  expose :animal do
    Animal.friendly.find params[:id]
  end

  expose :main_photo do
    Photo.where(name: animal.slug).first
  end

end
