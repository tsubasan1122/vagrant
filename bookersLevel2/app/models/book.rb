class Book < ApplicationRecord
	belongs_to :user
	validates :title, presence: true
	validates :opinion, presence: true
	validates :title, length: {maximum: 200}
	validates :opinion, length: {maximum: 200}
end
