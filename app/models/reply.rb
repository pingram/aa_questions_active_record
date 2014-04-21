class Reply < ActiveRecord::Base
	belongs_to :question
	belongs_to :author, class_name: "User", foreign_key: :user_id
	belongs_to :parent_reply, class_name: "Reply", foreign_key: :parent_reply_id
	has_many :child_replies, class_name: "Reply", foreign_key: :parent_reply_id
end