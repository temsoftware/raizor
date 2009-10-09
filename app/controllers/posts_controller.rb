class PostsController < ApplicationController
  def create
    @post = Post.create params[:post]
    @post.save
    redirect_to debtor_path(@post.debtor_id)

   # respond_to do |format|
   #   format.html { redirect_to debtor_path(@post.debtor_id) }      
   #   format.js
   # end
  end
end

