# frozen_string_literal: true

class Cab < ApplicationRecord
  has_many :rides

  validates_format_of :cab_number, with: /\A[A-Z]+{2}[0-9]+{2}[A-Z]+{2}[0-9]+{4}\Z/i, on: :create
end
