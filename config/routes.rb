Rails.application.routes.draw do
  get 'up' => 'rails/health#show', as: :rails_health_check
  # real all
  get '/tasks', to: 'tasks#index'
  # create
  get '/tasks/new', to: 'tasks#new', as: :task_new
  post '/tasks', to: 'tasks#create'
  # read one
  get '/tasks/:id', to: 'tasks#show', as: :task
  # update
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_restaurant
  patch '/tasks/:id', to: 'tasks#update'
  # delete
  delete 'tasks/:id', to: 'tasks#destroy'
end
