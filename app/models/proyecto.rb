class Proyecto < ApplicationRecord
	
	has_many :departamentos
	has_many :lista_departamentos
	
	mount_uploader :avatar, AvatarUploader
end
