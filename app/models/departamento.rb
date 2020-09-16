class Departamento < ApplicationRecord	
	belongs_to :proyecto
	mount_uploader :foto, AvatarUploader
end
