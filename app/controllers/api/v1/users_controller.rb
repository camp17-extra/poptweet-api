class Api::V1::UsersController < ApplicationController
  skip_before_action :authenticate_user_from_token!, only: [:create]

  def show
    render json: User.find(params[:id]), each_serializer: Api::V1::UserSerializer
  end

  # POST
  # Create an user
  def create
    @user = User.new user_params

    if @user.save!
      render json: @user, serializer: Api::V1::SessionSerializer, root: nil
    else
      render json: { error: t('user_create_error') }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
