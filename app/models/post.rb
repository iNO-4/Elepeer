class Post < ApplicationRecord

	belongs_to :customer
	attachment :product_image

	validates :rate, numericality: {
		less_than_or_equal_to: 5,
		greater_than_or_equal_to: 0
	}
end
