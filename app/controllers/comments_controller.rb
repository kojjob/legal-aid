class CommentsController < ApplicationController

  def create
    @legal = Legal.find(params[:legal_id])
    @comment = @legal.comments.create(comment_params)
    if @comment.save
      redirect_to legal_path(@legal)
    else
      render 'new'
    end
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
