class Club < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :admissions, dependent: :destroy

  has_many :videos, dependent: :destroy

  has_many :club_genres, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
  validates :description, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?


  def full_address
    addy = self.address
    ace = self.postalcode
    return "#{addy}#{ace}"
  end
end
