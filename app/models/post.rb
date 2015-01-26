class Post < ActiveRecord::Base
	validates :text, length: { maximum: 200 }, presence: true
	belongs_to :user
end
