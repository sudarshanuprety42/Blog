Rails.application.routes.draw do
  get 'welcome/index' ,as: "haha"

  resources :articles

  resources :articles do
    resources :comments
  end
  root 'articles#index'
end
