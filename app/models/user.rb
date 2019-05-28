class User < ApplicationRecord
<<<<<<< HEAD
=======
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
>>>>>>> 0134613556bf54b4a46d4abcee9fd6f7559fa457
  mount_uploader :userimage, ImageUploader
end
