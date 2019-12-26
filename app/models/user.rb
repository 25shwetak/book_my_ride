class User < ApplicationRecord

  has_many :ride_request

  validates :first_name, :last_name, :contact_number, :email, presence: true
  validates :contact_number, uniqueness: true, length: { is: 10 }
  validates_format_of :contact_number, :with => /\A[0-9]*\Z/i, :on => :create

  before_save do
    self.first_name = self.first_name.titleize
    self.last_name = self.last_name.titleize
  end
end
