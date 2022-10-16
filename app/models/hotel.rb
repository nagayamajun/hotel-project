class Hotel < ApplicationRecord
  belongs_to :prefecture
  has_many :reviews
  mount_uploader :picture, PictureUploader
end
