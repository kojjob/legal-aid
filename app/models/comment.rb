class Comment < ApplicationRecord
  belongs_to :legal
  belongs_to :user
end
