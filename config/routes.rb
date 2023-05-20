Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  
  # rails routes -c tasks -E
  #unicos alias son de new, show y delete
  get '/tasks', to: 'tasks#index'
  get '/tasks/new', to: 'tasks#new', as: :new_task
  get '/tasks/:id', to: 'tasks#show', as: :task
  post  '/tasks',  to: 'tasks#create'
  get 'tasks/:id/edit', to: 'tasks:edit'

end
