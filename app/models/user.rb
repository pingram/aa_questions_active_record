class User < ActiveRecord::Base
	def self.find_by_name(fname, lname)
		self.find_by(fname: fname, lname: lname)
	end
end