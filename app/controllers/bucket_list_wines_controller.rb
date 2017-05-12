class BucketListWinesController < ApplicationController
  before_action :current_user_must_be_bucket_list_wine_user, :only => [:edit, :update, :destroy]

  def current_user_must_be_bucket_list_wine_user
    bucket_list_wine = BucketListWine.find(params[:id])

    unless current_user == bucket_list_wine.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @bucket_list_wines = BucketListWine.all

    render("bucket_list_wines/index.html.erb")
  end

  def show
    @bucket_list_wine = BucketListWine.find(params[:id])

    render("bucket_list_wines/show.html.erb")
  end

  def new
    @bucket_list_wine = BucketListWine.new

    render("bucket_list_wines/new.html.erb")
  end

  def create
    @bucket_list_wine = BucketListWine.new

    @bucket_list_wine.user_id = params[:user_id]
    @bucket_list_wine.wine_id = params[:wine_id]

    save_status = @bucket_list_wine.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bucket_list_wines/new", "/create_bucket_list_wine"
        redirect_to("/bucket_list_wines")
      else
        redirect_back(:fallback_location => "/", :notice => "Bucket list wine created successfully.")
      end
    else
      render("bucket_list_wines/new.html.erb")
    end
  end

  def edit
    @bucket_list_wine = BucketListWine.find(params[:id])

    render("bucket_list_wines/edit.html.erb")
  end

  def update
    @bucket_list_wine = BucketListWine.find(params[:id])
    @bucket_list_wine.wine_id = params[:wine_id]

    save_status = @bucket_list_wine.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bucket_list_wines/#{@bucket_list_wine.id}/edit", "/update_bucket_list_wine"
        redirect_to("/bucket_list_wines/#{@bucket_list_wine.id}", :notice => "Bucket list wine updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Bucket list wine updated successfully.")
      end
    else
      render("bucket_list_wines/edit.html.erb")
    end
  end

  def destroy
    @bucket_list_wine = BucketListWine.find(params[:id])

    @bucket_list_wine.destroy

    if URI(request.referer).path == "/bucket_list_wines/#{@bucket_list_wine.id}"
      redirect_to("/", :notice => "Bucket list wine deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Bucket list wine deleted.")
    end
  end
end
