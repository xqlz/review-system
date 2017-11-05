# frozen_string_literal: true

class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :user_id, foreign_key: true
      t.references :object_id, foreign_key: true
      t.integer :rating
      t.text :comment

      t.timestamps
    end
  end
end
