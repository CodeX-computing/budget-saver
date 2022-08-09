class Conversion < ApplicationRecord
  belongs_to :User
  has_many :group
end
