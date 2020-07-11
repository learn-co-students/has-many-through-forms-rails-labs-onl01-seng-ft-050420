class CommentsController < ApplicationController

  def create
    #{"content"=>"New New Comment", "post_id"=>"31", "user_id"=>"", "user"=>{"username"=>"New New User"}}
    
    comment = Comment.create(comment_params)
  
    redirect_to comment.post
  end


  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes: [:username])
  end
end
