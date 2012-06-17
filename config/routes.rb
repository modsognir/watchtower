Watchtower::Engine.routes.draw do
  resources :contacts do
    resources :notes
    member do
      post :tag
    end
  end

  resources :tags
end
