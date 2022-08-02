class Idea < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :description, presence: true, length: {minimum: 10}
end
