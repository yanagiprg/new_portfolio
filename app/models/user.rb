class User < ApplicationRecord
<<<<<<< HEAD
=======
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
>>>>>>> login_function
  mount_uploader :userimage, ImageUploader
end
