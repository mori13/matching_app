class Room < ApplicationRecord
  belongs_to :user, optional: true
  mount_uploader :roomphoto, RoomphotoUploader
end