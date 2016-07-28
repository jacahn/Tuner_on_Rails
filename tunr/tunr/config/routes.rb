Rails.application.routes.draw do
  get "artists" => "artists#index"
  post "artists" => "artists#create"
  get "artists/new" => "artists#new"
  get "artists/:id" => "artists#show"
  get "artists/:id/edit" => "artists#edit"
  put "artists/:id" => "artists#update"
  delete "artists/:id" => "artists#destroy"

  get "songs" => "songs#index"
  post "songs" => "songs#create"
  get "songs/new" => "songs#new"
  get "songs/:id" => "songs#show"
  get "songs/:id/edit" => "songs#edit"
  delete "songs/:id" => "songs#destroy"
  put "songs/:id" => "songs#update"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
