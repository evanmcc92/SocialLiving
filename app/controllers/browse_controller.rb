class BrowseController < ApplicationController
  def home
    if params[:search]
      @users = User.search(params[:search]).order("created_at DESC")
    else
      @users = User.all.order('created_at DESC')
    end
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed
    end
  end

  def profile
  end

  def message
  end

  def aboutus
  end
  
end
