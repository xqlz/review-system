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

require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'saves given a valid Book' do
  	book = Book.new(title: 'Buku', author: 'PanutanQ', year: 2017)
  	expect(book.save).to be true
  end
end
