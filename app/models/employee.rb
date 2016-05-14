class Employee < ActiveRecord::Base
  belongs_to :organisation
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, length: { in: 7..15 }
end
