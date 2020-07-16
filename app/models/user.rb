class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :portfolios, dependent: :destroy
  has_one_attached :image
  has_many :comments
  has_many :like
  has_one :view_count

  default_scope -> { where(blocked: false, deleted: false) }
  
  def full_name
  	"#{first_name&.capitalize} #{last_name&.capitalize}"
  end

  def admin?
    role == 'admin'
  end
end
