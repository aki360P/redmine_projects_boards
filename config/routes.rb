Rails.application.routes.draw do
  resources :projects do
    get '/boards', :controller => 'rpjb_boards', action: :index
  end  
end