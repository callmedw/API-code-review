Rails.application.routes.draw do
  root to: 'creatures#index'
  resources :creatures do
    collection do
      get :most_comments
      get :search
    end
    resources :comments
  end
end
