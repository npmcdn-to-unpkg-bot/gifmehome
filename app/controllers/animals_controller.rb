class AnimalsController < ApplicationController

  expose :items do
    Photo.where.not(name: nil).order(:name).group_by { |e| e.name[0] }
  end

end
