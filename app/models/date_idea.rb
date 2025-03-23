class DateIdea < ApplicationRecord
  validates :name, :image, :cost, :description, presence: true
end
