class Proyecto < ApplicationRecord
	
	has_many :departamentos
	mount_uploader :avatar, AvatarUploader
end
