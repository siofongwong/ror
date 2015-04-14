class CommentsController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @comment = @project.comments.create(params.require(:comment).permit(:commenter, :body))
    redirect_to project_path(@project)
  end

end
