# frozen_string_literal: true

# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  book_id    :integer
#  rating     :integer
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_reviews_on_book_id  (book_id)
#  index_reviews_on_user_id  (user_id)
#

class Review < ApplicationRecord
  belongs_to :user
  belongs_to :book
  validates :rating, numericality: true
  validates :rating, numericality: { less_than_or_equal_to: 5 }
end
