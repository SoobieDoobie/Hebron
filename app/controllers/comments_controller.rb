class CommentsController < ApplicationController
    def create
        comment = Comment.new
        comment.content = params[:content]
        comment.post_id = params[:post_id]
        comment.save
        
        redirect_to '/quotes'
    end
    
    def delete
        delete_comment = Comment.find(params[:id])
        delete_comment.delete
        redirect_to '/quotes'
    end
end
