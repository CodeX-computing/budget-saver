class Group < ApplicationRecord
  belongs_to :user
  has_many :group_conversions, class_name: 'GroupConversion', foreign_key: :group_id
end
