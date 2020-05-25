class Booking < ApplicationRecord
  belongs_to :instrument
  belongs_to :user
  belong_to :user, through: :instrument
end
