class V1::UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :created_at, :updated_at
end
