class StaticController < ApplicationController

	layout 'static'
	
	def aboutus
	end

	def contactus
	end

	def services
	end

	def faq
	end

	#Mi metodo Post
	def mimetodo
        puts "------- Datos enviados por el formulario -------------"
        puts
        p1 = params[:upc][:name]
        p2 = params[:upc][:lastname]
        p3 = params[:upc][:email]

        puts "El valor del campo nombre es: #{p1}"
        puts "El valor del campo apellido es: #{p2}"
        puts "El valor del campo email es: #{p3}"
        puts
        puts "--------Fin -----------"
    end
	
end
