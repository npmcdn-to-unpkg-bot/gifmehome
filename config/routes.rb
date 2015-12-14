Rails.application.routes.draw do

  resources :photos do
    resources :memes do

    end
    get '_preview', on: :member, to: 'memes#preview'
  end

  root to: 'photos#index'

end
