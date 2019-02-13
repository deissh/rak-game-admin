Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :npcs
      resources :quests
      resources :answers

      root to: "users#index"
    end
    
  get '/user/login', to: 'user#login'
  get '/quests', to: 'quest#getall'
end
