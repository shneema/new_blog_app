class Like < ApplicationRecord
  belongs_to :user
  belongs_to :portfolio

  scope :liked_or_not, ->(user, portfolio) { where(user_id: user, portfolio_id: portfolio) } 
end
