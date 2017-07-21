Rails.application.routes.draw do
  resources :creatures do
    resources :comments
  end
end
