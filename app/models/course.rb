class Course < ApplicationRecord
	belongs_to :member
	has_many :sections
	has_many :enrollments
	mount_uploader :image, ImageUploader

	validates :title, presence: true
	validates :description, presence: true
	validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}
end
