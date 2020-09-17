class DetalleDepartamento < ApplicationRecord
  belongs_to :departamento

  mount_uploaders  :fotos ,  AvatarUploader
  
  serialize  :fotos ,  JSON # Si usa SQLite, agregue esta línea. 
end
