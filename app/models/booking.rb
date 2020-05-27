class Booking < ApplicationRecord
  belongs_to :instrument
  belongs_to :user
  validates :user_id, presence: true
  validates :instrument_id, presence: true
end
