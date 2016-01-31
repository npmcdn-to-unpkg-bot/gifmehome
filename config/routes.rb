Rails.application.routes.draw do

  resources :photos do
    resources :memes do

    end
    get '_preview', on: :member, to: 'memes#preview'
  end

  resources :animals do

  end

  root to: 'memes#index'

end
