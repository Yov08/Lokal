class User < ApplicationRecord
  has_one :artist, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :events, through: :likes
  def likes?(event)
    self.likes.exists?(event: event)
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
