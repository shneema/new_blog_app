class Portfolio < ApplicationRecord
  has_many_attached :images
  has_many_attached :videos
  belongs_to :user
end
