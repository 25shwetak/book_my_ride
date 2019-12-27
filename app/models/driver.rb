# frozen_string_literal: true

class Driver < ApplicationRecord
  has_many :rides

  validates :first_name, :last_name, :license_number, :mobile_number, presence: true
  validates :mobile_number, uniqueness: true, length: { is: 10 }
  validates :license_number, uniqueness: true
  validates_format_of :license_number, with: /\A[A-Z]+{2}[0-9]+{13}\Z/i, on: :create
end
