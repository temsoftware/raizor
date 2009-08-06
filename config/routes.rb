ActionController::Routing::Routes.draw do |map|
  map.root :controller => "sessions", :action => "new"
  map.resources :debtors
	map.resources :sessions
	map.resources :posts

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
