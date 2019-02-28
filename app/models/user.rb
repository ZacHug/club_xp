class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :videos, dependent: :destroy

  def name_string
    first = self.first_name.capitalize
    last = self.last_name[0][0].capitalize
    return "#{first} #{last}."
  end
end
