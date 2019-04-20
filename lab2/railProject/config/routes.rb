Rails.application.routes.draw do
  devise_for :people
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :user
  resources :articles do
    resources :comments
  end

  root 'welcome#index' #to make it as default page for App

end
