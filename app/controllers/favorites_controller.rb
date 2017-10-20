class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:micropost])
    current_user.favorite(micropost)
    flash[:success] = 'お気に入りに追加しました。'
    redirect_to root_url
  end

  def destroy
    micropost = Micropost.find(params[:micropost])
    current_user.unfavorite(micropost)
    flash[:success] = 'お気に入りを削除しました。'
    redirect_to root_url
  end
end
