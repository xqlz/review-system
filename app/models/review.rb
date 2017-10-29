class Review < ApplicationRecord
  belongs_to :user_id
  belongs_to :object_id
end
