class CommentsController < ApplicationController

  def create
    comment = Comment.new(params[:comment])
    comment.restaurant_id = params[:restaurant_id]
    comment.save
    comment_html = render_to_string partial: "comments/comment", layout: false, locals: { comment: comment }
    render json: { html: comment_html }.to_json
  end
end
