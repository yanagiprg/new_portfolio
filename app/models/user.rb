class User < ApplicationRecord
  has_secure_password
  
  mount_uploader :userimage, ImageUploader
end
