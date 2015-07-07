class Sshhh < ActiveRecord::Base
  belongs_to :user
  validates :secrets, presence: true
  validates :user, presence: true
end
