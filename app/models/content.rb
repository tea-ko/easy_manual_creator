class Content < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :title
  #belongs_to :user
end