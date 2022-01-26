class Group < ApplicationRecord
  attachment :image

  has_many :group_users
  has_many :users, through: :group_users,dependent: :destroy
  belongs_to :category
  
  validates :start_time, presence: true
end
