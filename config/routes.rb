Rails.application.routes.draw do
  # fetch all tasks
  get "tasks", to: "tasks#index"
  # add task
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"
  # view task
  get "tasks/:id", to: "tasks#show", as: :task
  # edit task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  # destroy task
  delete "tasks/:id", to: "tasks#destroy", as: :destroy_task
  # resources :tasks
end
