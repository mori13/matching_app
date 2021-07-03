class User < ApplicationRecord
  has_many :rooms
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :myself, MyselfUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
