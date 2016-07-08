class CommentsController < ApplicationController
    before_action :authenticate_user!


  def create
    @legal = Legal.find(params[:legal_id])
    @comment = @legal.comments.create(comment_params)
    redirect_to legal_path(@legal)
  end

  def destroy
    @legal = Legal.find(params[:legal_id])
    @comment = @legal.comments.find(params[:id])
    @comment.destroy
    redirect_to legal_path(@legal)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
