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
  
  
  
  #### site
  get '/club' => 'sites#club'
  get '/club_content' => 'sites#club_content'
  get '/competition' => 'sites#competition'
  
  ### 메인 페이지
  root to: 'sites#index'
  
end


  
