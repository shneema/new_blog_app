class Portfolio < ApplicationRecord
  has_many_attached :images
  has_many_attached :videos
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  belongs_to :user
end
