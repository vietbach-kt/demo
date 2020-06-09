class Comment < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :content_coment, presence: true, length: { maximum: 1000 }
end
