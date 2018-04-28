class Reply < ApplicationRecord
  belongs_to :tweet

  validates :text, presence: true
end
