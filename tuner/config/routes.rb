Rails.application.routes.draw do
  # get 'artists'=> 'artists#index'
  # get "artists/:id"=> "artists#show"
  # functionally equivalent w 2 above
  # : create generates new restful route
    resources :artists, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'artists#index'
end
