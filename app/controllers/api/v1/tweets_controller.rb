module Api
  module V1
    class Api::V1::TweetsController < ApplicationController
      def index
        @tweets = Tweet.all
        render json: @tweets
      end
    end
  end
end
