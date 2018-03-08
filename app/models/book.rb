class Book < ApplicationRecord
	validates :title, presence: true
	validates :author, presence: true
	validates :weight, presence: true
	validates :publisher, presence: true
	validates :language, presence: true
	validates :publication_date, presence: true
end

