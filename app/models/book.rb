# frozen_string_literal: true

# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string
#  author     :string
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ApplicationRecord
  has_many :reviews
end
