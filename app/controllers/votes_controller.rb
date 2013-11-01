class VotesController < ApplicationController

  def create
    #replace user with the signed in user object
    user = User.create(username: "ddasd", email: "4234", password: "dsdsd")
    if user.not_voted_on?(params[:comment_id])
      comment = Comment.find params[:comment_id]
      vote = comment.votes.new params[:vote_data]
      vote.user_id = user.id
      if vote.save
        redirect_to :back
      else
        redirect_to root_path
      end
    else
      redirect_to root_path
    end


    # comment.restaurant_id = params[:restaurant_id]
    # comment.user_id = 1
    # # comment.user_id = session[:user_id]
    # if comment.save
    #   comment_html = render_to_string partial: "comments/comment", layout: false, locals: { comment: comment }
    #   render json: { html: comment_html }.to_json
    # else
    #   render json: { error: comment.errors.full_messages, status: :unprocessable_entity }
    # end
  end
end
