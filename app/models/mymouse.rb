class Mymouse < ApplicationRecord
  scope :search, -> { where(created_at: Time.now) }
end
 