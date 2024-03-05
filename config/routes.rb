Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # I can list tasks => All Task #index
  get '/tasks', to: 'tasks#index'

  # I can add a new task => Create get #new post #create
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'

  # I can edit a task (mark as completed / update title & details)  => Update get #edit patch #update
  get '/tasks/:id/edit', to: 'tasks#edit', as: :tasks_edit
  patch '/tasks/:id', to: 'tasks#update'

  # I can remove a task => Remove #destroy
  delete '/tasks/:id', to: 'tasks#destroy'
  # I can view the details of a task =>  One task #show
  get '/tasks/:id', to: 'tasks#show', as: :task
  # root "posts#index"
end
