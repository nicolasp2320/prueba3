Rails.application.routes.draw do
  
  root "tweets#index"
  get '/wallpaper.jpg', to: 'wallpapers#show'
  get '/tweets', to: 'tweets#index'


  resources :tweets do
    member do
      get "preview"
    end

    collection do
      get 'search'
    end
  end
end
