class Event < ApplicationRecord
  belongs_to :user

  validates :name_type, presence: true
  validates :description_type, presence: true, length: {maximum: 500}
  validates :starts_at_type, presence: true
  validates :ends_at_type, presence: true
  validate :end_after_start

  private
  def end_after_start
    return if ends_at.blank? || starts_date.blank?

    if ends_at <= starts_at + 1.day
      errors.add(:ends_at, "must be after the start date")
    end
  end


end
