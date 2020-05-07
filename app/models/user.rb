class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweets, dependent: :destroy
  has_many :passive_followships, class_name: "Followship", 
                                 foreign_key: "following_id",
                                 dependent: :destroy
  has_many :followers, through: :passive_followships
  has_many :active_followships, class_name: "Followship", 
                                 foreign_key: "follower_id",
                                 dependent: :destroy
  has_many :followings, through: :active_followships
  has_one_attached :avatar
  validates :name, :username, :email, presence: true
  validates :username, uniqueness: true
end
