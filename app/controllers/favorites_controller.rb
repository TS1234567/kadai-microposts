class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    @micropost = Micropost.find(params[:post_id])
    
    current_user.favorite(@micropost)
    
  #  redirect_to current_user
    redirect_back(fallback_location: root_url) 
  end

  def destroy
  end
end
