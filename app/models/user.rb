class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :portfolios, dependent: :destroy
  has_one_attached :image
  has_many :comments
  has_many :like
  
  def full_name
  	"#{first_name&.capitalize} #{last_name&.capitalize}"
  end
end
