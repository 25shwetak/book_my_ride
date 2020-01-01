# frozen_string_literal: true

class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class User < ApplicationRecord
  has_many :ride_requests
  has_secure_password

  validates :first_name, :last_name, :contact_number, :email, presence: true
  validates :contact_number, uniqueness: true, length: { is: 10 }
  validates :email,presence: true, email: true
  validates_format_of :contact_number, with: /\A[0-9]*\Z/i, on: :create

  before_save do
    self.first_name = first_name.titleize
    self.last_name = last_name.titleize
  end
end
