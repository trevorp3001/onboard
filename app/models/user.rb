class User < ActiveRecord::Base

	#built in for you
	has_secure_password

	#validaions
	validates :name, presence: true
	validates :username, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true
end
