module Blorgh
  class CommentsController < ApplicationController
    def create
      @article = Article.find(params[:article_id])
      @comment = @article.comments.create(comment_params.merge(author_id: current_user.id))
      flash[:notice] = "Comment has been created!"
      redirect_to articles_path
    end

    private
    
    def comment_params
      params.require(:comment).permit(:text)
    end
  end
end
