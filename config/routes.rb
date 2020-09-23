Rails.application.routes.draw do
  get 'lista_departamentos/index'

  resources :detalle_departamentos do
	member do
		get :delete
	end
  end


  resources :contactos
  resources :bloqueos
  resources :usuarios

  	resources :alumnos
  	get 'home/index'
  	


  resources :departamentos do
    member do
		get :delete
		get 'listadepartamentos'
		
	  end
   end

  	resources :citations do
  		member do
			get :delete
			get :show_user
  		end
	end


	resources :proyectos do
		member do
			get :delete
			get 'listaproyectos'
		end
   end


	resources :alumnos
	get 'home/index'



	get 'static/aboutus'
	get 'static/contactus'
	get 'static/proyectos'
	get 'static/faq'

	get 'usuarios/index'
	get 'static/registroVta'
	get 'static/reporteDptos'

	get 'static/busquedacitas'
	get 'static/proforma'
	get 'static/separardepartamento'
	get 'static/detalledepartamento'
	get 'static/solicitarcita'
	get 'static/departamentos'


	root 'home#index'

	post 'static/mimetodo'
	

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
