class Posts::CommentsController < ApplicationController
  before_action :set_post
  def index
    @comments = @post.comments
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:post_id])
  end
end
