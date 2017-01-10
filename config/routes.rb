Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/index' => 'resumes#index'
  
  get '/index' => 'capstones#index'
  get '/capstones/:id' => 'capstones#show'
  get '/capstones/:id/edit' => 'capstones#edit'
  patch '/capstones/:id' => 'capstones#update'

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
