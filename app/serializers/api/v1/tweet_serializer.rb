class Api::V1::TweetSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :text, :user_id

  has_many :replies
end
