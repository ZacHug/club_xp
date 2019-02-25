class Club < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
  validates :description, presence: true
  mount_uploader :photo, PhotoUploader
end
