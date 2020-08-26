Rails.application.routes.draw do
  	resources :cita
  	resources :alumnos
  	get 'home/index'
  	
	get 'cita/showcita'
	get 'static/aboutus'
	get 'static/contactus'
	get 'static/services'
	get 'static/faq'
<<<<<<< HEAD
	get 'static/busquedacitas'
	get 'static/proforma'
	get 'static/separardepartamento'
=======
	get 'static/detalledepartamento'
	get 'static/solicitarcita'

	get 'static/departamentos'
>>>>>>> 12de0502f8ef753c422f488ce5d4d8685a186f74

	root 'home#index'
	
	post 'static/mimetodo'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
