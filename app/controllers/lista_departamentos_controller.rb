class ListaDepartamentosController < ApplicationController
  def index
  	@departamentos = Departamento.all
  	
  end
end
