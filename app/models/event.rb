class Event < ApplicationRecord
has_many :bookings ,dependent: :destroy
validates :title, :date, :location, :max_seats, presence: true
end
