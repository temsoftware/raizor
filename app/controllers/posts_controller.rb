class PostsController < ApplicationController
  def create
    @post = Post.create params[:post]
    @post.save

    respond_to do |format|
      format.html { redirect_to debtor_path(@debtor) }      
      format.js
    end
  end
end
