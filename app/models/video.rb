class Video < ApplicationRecord
  belongs_to :user
  belongs_to :club

  mount_uploader :video, VideoUploader
end
