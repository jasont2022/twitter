class Tweet < ApplicationRecord
  belongs_to :user
  validates :tweet, length: {minimum: 1, maximum: 280}, presence: true
end
