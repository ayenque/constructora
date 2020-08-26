Rails.application.routes.draw do
  	resources :alumnos
  	get 'home/index'
  	

	get 'static/aboutus'
	get 'static/contactus'
	get 'static/services'
	get 'static/faq'
	get 'static/busquedacitas'
	get 'static/proforma'
	get 'static/separardepartamento'

	root 'home#index'
	
	post 'static/mimetodo'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
