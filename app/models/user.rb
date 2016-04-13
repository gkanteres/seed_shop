class User < ActiveRecord::Base
  validates :username, :first_name, :last_name, :address, :phone, :email, presence: true
  has_many :products
  has_many :reviews

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
