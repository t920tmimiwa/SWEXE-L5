Rails.application.routes.draw do
    resources :users
    resources :tweets
    get 'top/main'
    post 'top/login'
    get 'top/logout'
    resources :likes
    root 'tweets#index'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
