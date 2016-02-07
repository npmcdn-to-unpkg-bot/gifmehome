class Admin::AnimalsController < ApplicationController

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  layout 'admin'

  expose :animal, attributes: :animal_params

  def create
    if animal.save
      redirect_to admin_animals_path
    else
      render 'new'
    end
  end

  private
  def animal_params
    params.require(:animal).permit(:name, :lead, :character, :attitude, :home)
  end

end
