class StaticPagesController < ApplicationController
  
  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end
  
  def favorites
    @favorite = Favorite.new
    @favorite_microposts = current_user.fav_feed.paginate(page: params[:page])
  end

end
