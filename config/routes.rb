Rails.application.routes.draw do
  resources :icecreams

  get 'welcome/index'

  root 'welcome#index'
end
