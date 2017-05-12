Rails.application.routes.draw do
  # Routes for the Bucket_list_wine resource:
  # CREATE
  get "/bucket_list_wines/new", :controller => "bucket_list_wines", :action => "new"
  post "/create_bucket_list_wine", :controller => "bucket_list_wines", :action => "create"

  # READ
  get "/bucket_list_wines", :controller => "bucket_list_wines", :action => "index"
  get "/bucket_list_wines/:id", :controller => "bucket_list_wines", :action => "show"

  # UPDATE
  get "/bucket_list_wines/:id/edit", :controller => "bucket_list_wines", :action => "edit"
  post "/update_bucket_list_wine/:id", :controller => "bucket_list_wines", :action => "update"

  # DELETE
  get "/delete_bucket_list_wine/:id", :controller => "bucket_list_wines", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
