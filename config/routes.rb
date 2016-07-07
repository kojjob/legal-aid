Rails.application.routes.draw do
  devise_for :users
  resources :legals do
    resources :comments
  end
 root 'legals#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
