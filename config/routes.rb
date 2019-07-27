Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
  root to: 'tasks#index'
  
  resources :tasks
#   get 'tasks/:id', to: 'tasks#show'
#   post 'tasks', to: 'tasks#create'
#   put 'tasks/:id', to: 'tasks#update'
#   delete 'tasks/:id', to:'tasks#destroy'
  
#   get 'tasks', to: 'tasks#index'
  
#   # new: 新規作成用のフォームページ
#   get 'tasks/new', to: 'tasks#new'
  
#   # edit: 更新用のフォームページ
#   get 'tasks/:id/edit', to: 'tasks#edit'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:create]
end
