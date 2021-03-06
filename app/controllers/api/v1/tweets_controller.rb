class Api::V1::TweetsController < ApplicationController
  skip_before_action :authenticate_user_from_token!, only: [:index, :show]

  def index
    tweets = Tweet.all
    render json: tweets
  end

  def create
    tweet = Tweet.create(tweet_params)
    render json: tweet
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    render json: tweet
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params)
    render json: tweet
  end

  def show
    tweet = Tweet.find(params[:id])
    render json: tweet
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :image, :text, :user_id)
  end

end
