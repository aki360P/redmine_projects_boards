Rails.application.routes.draw do
  match 'projects/:project_id/rpjb_boards/:action', :controller => 'rpjb_boards', :via => [:get]
end