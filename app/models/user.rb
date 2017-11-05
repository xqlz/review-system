# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string
#  hashed_password :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  def authenticate(password)
    BCrypt::Password.new(hashed_password) == password
  end

  attr_reader :password

  def password=(password)
    @password = password
    self.hashed_password = BCrypt::Password.create(password)
  end

  # "has_secure_password" to replace all above
end
