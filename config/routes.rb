Rails.application.routes.draw do

  resources :students, only: [:index, :show]
  get 'students/:id/activate', to: 'students#show'
  post 'students/:id/activate', to: "students#show"
  
end
