class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :profile_image

  has_many :group_users   #中間テーブル！
  has_many :groups, through: :group_users,dependent: :destroy
  
  # has_many :owned_groups, class_name: "Group"
  # has_many :favorites, dependent: :destroy
  # has_many :book_comments, dependent: :destroy


  validates :name, length: { minimum: 2, maximum: 20 }, uniqueness: true
  validates :introduction, length: { maximum: 50 }

end
