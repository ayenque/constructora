Rails.application.routes.draw do
  	resources :cita
  	resources :alumnos
  	get 'home/index'
  	
	get 'cita/showcita'
	get 'static/aboutus'
	get 'static/contactus'
	get 'static/services'
	get 'static/faq'
	get 'static/detalledepartamento'
	get 'static/solicitarcita'

	get 'static/departamentos'

	root 'home#index'
	
	post 'static/mimetodo'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
