class Booking < ApplicationRecord
  belongs_to :instrument
  belongs_to :user
  belongs_to :user, through: :instrument
end
