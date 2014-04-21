class QuestionFollower < ActiveRecord::Base
	belongs_to :question
	belongs_to :follower, class_name: "User", foreign_key: :follower_id

	def self.most_followed_questions(n)
		Question
			.select("questions.id, COUNT(question_followers.id) AS num_follows")
			.joins("LEFT OUTER JOIN question_followers ON questions.id = question_followers.question_id")
			.group("questions.id")
			.order("COUNT(question_followers.id) DESC")
			.limit(n)
	end
end