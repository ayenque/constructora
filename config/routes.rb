Rails.application.routes.draw do
  resources :usuarios
  	resources :cita
  	resources :alumnos
  	get 'home/index'
  	
	get 'cita/showcita'

  resources :departamentos

  	resources :citations do
  		member do
			get :delete
			get :show_user
  		end
	end


	resources :proyectos
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
