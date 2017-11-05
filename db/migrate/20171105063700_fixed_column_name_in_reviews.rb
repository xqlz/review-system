# frozen_string_literal: true

class FixedColumnNameInReviews < ActiveRecord::Migration[5.1]
  def change
    rename_column :reviews, :object_id, :book_id
  end
end
