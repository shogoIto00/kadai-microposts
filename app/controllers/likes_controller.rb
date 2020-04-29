class LikesController < ApplicationController
  def create
    post = Micropost.find(params[:micropost_id])
    current_user.like(post)
    flash[:success] = '投稿をお気に入りに登録しました'
    redirect_to '/'
  end

  def destroy
    post = Micropost.find(params[:micropost_id])
    current_user.unlike(post)
    flash[:success] = '投稿のお気に入りを解除しました。'
    redirect_to '/'
  end
end
