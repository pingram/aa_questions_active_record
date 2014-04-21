class User < ActiveRecord::Base
	has_many :authored_questions, class_name: "Question", foreign_key: :author_id
	has_many :authored_replies, class_name: "Reply"

	def self.find_by_name(fname, lname)
		self.find_by(fname: fname, lname: lname)
	end
end