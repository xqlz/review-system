class User < ApplicationRecord
	def authenticate(password)
		BCrypt::Password.new(self.hashed_password) == password
	end

	def password
		@password
	end

	def password=(password)
		@password = password
		self.hashed_password = BCrypt::Password.create(password)
	end

	# "has_secure_password" to replace all above
end
