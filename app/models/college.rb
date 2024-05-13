class College < ApplicationRecord
  has_many :departments
  has_many :laboratories, through: :departments
end
