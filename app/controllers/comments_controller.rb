class CommentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def create
    @post = Post.find(params[:post_id])
    @comment= Comment.create(params[:comment].permit(:content))
    @comment.user_id = current_user.id
    @comment.post_id = @post.id

    if a comment.save
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end
end
