class Group < ApplicationRecord
  belongs_to :User
  belongs_to :conversion
end
