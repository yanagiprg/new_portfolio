class User < ApplicationRecord
  mount_uploader :userimage, ImageUploader
end
