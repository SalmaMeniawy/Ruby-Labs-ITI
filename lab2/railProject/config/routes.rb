Rails.application.routes.draw do
  # devise_for :people
  devise_for :people, path: '/', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :user
  resources :articles do
    resources :comments
  end

  root 'welcome#index' #to make it as default page for App

end
