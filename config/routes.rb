Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :students, only: [:index, :show] #// this one creates the paths automatically for us
  get '/students', to: 'students#index'
  get '/sudents/:id', to: 'students#show', as: 'student'
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
  # VERB (        url path   ,     controller method  , 'as:' this makes sure the path 'activate_student' is created.)
end
