Rails.application.routes.draw do
  devise_for :users
  resources :items do
    resources :monitems
  end
  root "items#index"
end
