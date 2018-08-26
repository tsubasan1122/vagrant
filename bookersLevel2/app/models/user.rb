class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username,uniqueness: true
  validates :username, presence: true
  validates :username,length: {in: 2..20}
  validates :introduction,length: {maximum: 50}
 # deviseでemailを不必要にする
  attachment :image
  has_many :books
end
