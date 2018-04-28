class Api::V1::RepliesController < ApplicationController
  def create
    tweet = Tweet.find(params[:tweet_id])
    reply = tweet.replies.build(reply_params)
    reply.save
    render json: reply
  end

  def update
    tweet = Tweet.find(params[:tweet_id])
    reply = tweet.replies.find(params[:id])
    reply.assign_attributes(reply_params)
    reply.save
    render json: reply
  end

  def destroy
    tweet = Tweet.find(params[:tweet_id])
    reply = tweet.replies.find(params[:id])
    reply.destroy
    render json: reply
  end

  private
  def reply_params
    params.require(:reply).permit(:text).merge(user_id: current_user.id)
  end
end
