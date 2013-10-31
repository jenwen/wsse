class CommentsController < ApplicationController

  def create
        p params
    comment = Comment.new(params[:post])
    comment.save
    comment_html = render_to_string partial: "comments/comment", layout: false, locals: { comment: comment }
    render json: { html: comment_html }.to_json
  end
end
