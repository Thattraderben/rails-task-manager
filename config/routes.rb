Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/tasks', to: 'tasks#index'
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  patch '/tasks/:id', to: 'tasks#update', as: 'patch_task'
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  delete '/tasks/:id', to: 'tasks#destroy', as: 'delete_task'
end
