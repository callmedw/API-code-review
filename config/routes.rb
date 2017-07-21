Rails.application.routes.draw do
  resources :creatures
    resources :comments
end
