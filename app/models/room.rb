class Room < ApplicationRecord
  belongs_to :user
  mount_uploader :roomphoto, RoomphotoUploader
end