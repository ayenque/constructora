class Departamento < ApplicationRecord	
	belongs_to :proyecto
	has_many :detalle_departamento
end
