class PostsController < ApplicationController
  def create
  end
  
  def create_post
    post = Post.create!(title: params[:title], content: params[:content])
    redirect_to "/read/#{post.id}"
  end

  def read
     @post = Post.find(params[:post_id])
  end

  def update
     @post = Post.find(params[:post_id])
  end
  
  def update_post
    post = Post.find(params[:post_id])
    post.update(title: params[:title], content: params[:content])
    redirect_to "/read/#{post.id}"
  end

  def delete
    post = Post.find(params[:post_id])
    post.destroy
    redirect_to "/"
  end
end
