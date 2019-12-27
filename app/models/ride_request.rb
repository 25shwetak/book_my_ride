# frozen_string_literal: true

class RideRequest < ApplicationRecord
  belongs_to :user
  belongs_to :ride
end
