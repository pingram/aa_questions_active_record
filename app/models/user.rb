class User < ActiveRecord::Base
	has_many :authored_questions, class_name: "Question", foreign_key: :author_id
	has_many :authored_replies, class_name: "Reply"
	has_many :question_follows, class_name: "QuestionFollower", foreign_key: :follower_id
	has_many :followed_questions, through: :question_follows, source: :question

	def self.find_by_name(fname, lname)
		self.find_by(fname: fname, lname: lname)
	end
end