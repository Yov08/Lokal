class User < ApplicationRecord
  has_one :artist, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :create_artist_profile

  def create_artist_profile
    if self.user_type == true
      self.create_artist
    end
  end

  def artist_details
    if artist.present?
      "Name: #{artist.name}, Description: #{artist.biography}"
    else
      "You haven't created an artist profile yet."
    end
  end
end
