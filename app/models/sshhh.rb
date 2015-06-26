class Sshhh < ActiveRecord::Base
  belongs_to :user
  validates :secrets, presence: true
end
