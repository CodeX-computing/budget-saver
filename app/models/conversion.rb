class Conversion < ApplicationRecord
  belongs_to :author, class_name: 'User'
  # has_many :groups
  has_many :group_conversions, class_name: 'GroupConversion', foreign_key: :conversion_id
end
