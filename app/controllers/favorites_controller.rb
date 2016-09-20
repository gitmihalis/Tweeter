class FavoritesController < ApplicationController
  before_action :logged_in_user

  def create
    micropost = Micropost.find(params[:micropost_id])
    
    if current_user.faved?(micropost)
      # Do nothing
    else
      if current_user.favorites.count < 30
        current_user.fav(micropost)
      elsif current_user.favorites.count >= 30
        earliest_fav = current_user.favorites.first
        earliest_fav.destroy
        current_user.fav(micropost)
      end     
    end
  end
  
  def destroy
    micropost = Micropost.find(params[:micropost_id])
    if current_user.faved?(micropost)
      current_user.unfav(micropost)
    end
  end

  
        
end
