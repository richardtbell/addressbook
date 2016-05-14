class Organisation < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true
  validates :address, presence: true
  validates :phone, presence: true, length: { in: 7..15 }
end
