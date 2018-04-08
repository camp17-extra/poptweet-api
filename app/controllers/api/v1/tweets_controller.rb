module Api
  module V1
    class Api::V1::TweetsController < ApplicationController
      def index
        @tweets = Tweet.all
        render json: @tweets
      end

      def create
        @tweet = Tweet.create(tweet_params)
        render json: @tweet
      end

      def destroy
        tweet = Tweet.find(params[:id])
        tweet.destroy
        render json: tweet
      end

      private
      def tweet_params
        params.permit(:name, :image, :text)
      end

    end
  end
end
