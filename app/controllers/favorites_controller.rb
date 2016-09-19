class FavoritesController < ApplicationController
  before_action :logged_in_user

  def create
    @micropost = Micropost.find(params[:micropost_id])
    if current_user.faved?(@micropost)
    else
      current_user.fav(@micropost)
      redirect_back(fallback_location: root_url)
    end
  end
  
  def destroy
    @micropost = Micropost.find(params[:micropost_id])
    if current_user.faved?(@micropost)
      current_user.unfav(@micropost)
      redirect_back(fallback_location: root_url)
    end
  end

  
        
end
