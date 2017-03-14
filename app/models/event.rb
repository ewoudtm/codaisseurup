class Event < ApplicationRecord
  belongs_to :user

  validates :name_type, presence: true
  validates :description_type, presence: true, length: {maximum: 500}
end
