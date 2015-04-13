class CommentsController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret",
  only: :destroy

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(params.require(:comment).permit(:commenter, :body))
    redirect_to article_path(@article)
  end

end
