class Review < ApplicationRecord
  belongs_to :idea
  belongs_to :user

  validates :body, presence: true, length: { minimum: 10 }
end
