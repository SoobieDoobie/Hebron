class PostsController < ApplicationController
    def quotes
        @posts = Post.all.reverse
    end
    
    
    def create
        post = Post.new
        post.name = params[:name]
        post.email = params[:email]
        post.subject = params[:subject]
        post.message = params[:message]
        post.save
        
        redirect_to '/contact'
    end
    
    def delete
        delete_post = Post.find(params[:post_id])
        delete_post.delete
        redirect_to '/quotes'
    end
end
