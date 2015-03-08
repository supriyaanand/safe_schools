class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @issue = Issue.find(params[:issue_id])
    @comment = @issue.comments.create(comment_params)
    redirect_to issue_path(@issue)
  end

  def destroy
    @issue = Issue.find(params[:issue_id])
    @comment = @issue.comments.find(params[:id])
    @comment.destroy
    redirect_to issue_path(@issue)
  end
  
  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
