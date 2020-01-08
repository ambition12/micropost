class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    fav_item = Micropost.find(params[:micropost_id])
    current_user.favorite(fav_item)
    flash[:success] = 'お気に入り登録しました。'
    redirect_to user
  end

  def destroy
    fav_item = Micropost.find(params[:micropost_id])
    current_user.unfavorite(fav_item)
    flash[:success] = 'お気に入り登録を解除しました。'
    redirect_to user
  end
end
