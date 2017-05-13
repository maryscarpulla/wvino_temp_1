Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "my_wines#index"
  # Routes for the Wine resource:
  # CREATE
  get "/wines/new", :controller => "wines", :action => "new"
  post "/create_wine", :controller => "wines", :action => "create"

  # READ
  get "/wines", :controller => "wines", :action => "index"
  get "/wines/:id", :controller => "wines", :action => "show"

  # UPDATE
  get "/wines/:id/edit", :controller => "wines", :action => "edit"
  post "/update_wine/:id", :controller => "wines", :action => "update"

  # DELETE
  get "/delete_wine/:id", :controller => "wines", :action => "destroy"
  #------------------------------

  # Routes for the My_wine resource:
  # CREATE
  get "/my_wines/new", :controller => "my_wines", :action => "new"
  post "/create_my_wine", :controller => "my_wines", :action => "create"

  # READ
  get "/my_wines", :controller => "my_wines", :action => "index"
  get "/my_wines/:id", :controller => "my_wines", :action => "show"

  # UPDATE
  get "/my_wines/:id/edit", :controller => "my_wines", :action => "edit"
  post "/update_my_wine/:id", :controller => "my_wines", :action => "update"

  # DELETE
  get "/delete_my_wine/:id", :controller => "my_wines", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
