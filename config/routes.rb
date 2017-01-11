Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/api/v1/resume' => 'resumes#index'
  
  get '/api/v1/experiences/:id' => 'experiences#show'
  get '/api/v1/experiences/:id/edit' => 'experiences#edit'
  patch '/api/v1/experiences/:id' => 'experiences#update'

  get '/api/v1/educations/:id' => 'educations#show'
  get '/api/v1/educations/:id/edit' => 'educations#edit'
  patch '/api/v1/educations/:id' => 'educations#update'

  get '/api/v1/skills/:id' => 'skills#show'
  get '/api/v1/skills/:id/edit' => 'skills#edit'
  patch '/api/v1/skills/:id' => 'skills#update'

  get '/api/v1/capstones/:id' => 'capstones#show'
  get '/api/v1/capstones/:id/edit' => 'capstones#edit'
  patch '/api/v1/capstones/:id' => 'capstones#update'


end




#   namespace :api do
#     namespace :v1 do
#       get '/index' => 'resumes#index'

#       get '/login' => 'sessions#new'
#       post '/login' => 'sessions#create'
#       get '/logout' => 'sessions#destroy'
#     end
#   end
# end
