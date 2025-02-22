Rails.application.routes.draw do
  resources :line_items
  resources :texture_groups
  resources :textures
  # Making the main page
  root "welcome#index"
  get "welcome/welcome"

  # Subsequent page redirects using the welcome controller
  get "/textures" => "textures#index"
  get "/secondPage" => "welcome#secondPage"
  get "/texture_groups" => "texture_groups#index"
  get "/form_with_get" => "welcome#form_with_get"
  get "/form_with_post" => "welcome#form_with_post"
end
