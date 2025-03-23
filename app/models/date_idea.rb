class DateIdea < ApplicationRecord
  validates :name, :image, :cost, :description, presence: true, length: { minimum: 1 }
end
