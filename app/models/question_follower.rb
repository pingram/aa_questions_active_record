class QuestionFollower < ActiveRecord::Base
	belongs_to :question
	belongs_to :follower, class_name: "User", foreign_key: :follower_id
end