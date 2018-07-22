Rails.application.routes.draw do
  devise_for :users
  # Create
  get '/notes/new' => 'notes#new' 
  post '/notes' => 'notes#create' 
  
  # Read 
  get '/notes' => 'notes#study'  
  get '/notes/:id' => 'notes#show'  

  # Update
  get '/notes/:id/edit' => 'notes#edit'  
  patch '/notes/:id' => 'notes#update' 
    
  # Destroy
  delete '/notes/:id' => 'notes#destroy'
  
  
  
  #### Comment
  # Create
  post '/comments' => 'comments#create'
  
  # Destroy
  delete '/comments/:id' => 'comments#destroy'
  
  
  #### 
  get '/study' => 'notes#study'
  
end


  
