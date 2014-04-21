class Question < ActiveRecord::Base
	belongs_to :author, class_name: "User", foreign_key: :author_id
	has_many :replies
	has_many :question_followers
	has_many :followers, through: :question_followers
end