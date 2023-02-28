class User < ApplicationRecord
  has_one :artist, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def artist_details
    if artist.present?
      "Name: #{artist.name}, Description: #{artist.description}"
    else
      "You haven't created an artist profile yet."
    end
  end
end
