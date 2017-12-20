Rails.application.routes.draw do
  resources :images
  get "images" => "images#index"
end
