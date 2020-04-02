class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :portfolios
  has_one_attached :image
  
  def full_name
  	"#{first_name&.capitalize} #{last_name&.capitalize}"
  end
end
