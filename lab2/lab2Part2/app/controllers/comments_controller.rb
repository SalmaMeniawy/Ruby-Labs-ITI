class CommentsController < ApplicationController
    def new
    end
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
    end
    private 
        def comment_params
            params.require(:comment).permit(:commenter , :body)
        end
end
