class CommentsController < ApplicationController
  before_action :find_commentable

  def new
    @comment = Comment.new
  end

  def create
    @comment = @commentable.comments.new(comment_params)

    if @comment.save
      redirect_to :back, notice: 'Your comment was successfully posted!'
    else
      redirect_to :back, notice: "Your comment wasn't posted!"
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end

    def find_commentable
      # @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
      # @commentable = Beer.find_by_id(params[:beer_id]) if params[:beer_id]
      @commentable = Beer.find(params[:beer_id])
    end
end
