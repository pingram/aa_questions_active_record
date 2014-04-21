class Question < ActiveRecord::Base
	belongs_to :author, class_name: "User", foreign_key: :author_id
	has_many :replies
end