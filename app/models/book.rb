class Book < ApplicationRecord
	validates :name, presence: true, uniqueness: true
	validates :description, presence: true, length: {minimum: 20}
end
