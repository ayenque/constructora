Rails.application.routes.draw do
	resources :proyectos
	resources :cita
	resources :alumnos
	get 'home/index'

	get 'cita/showcita'
	get 'static/aboutus'
	get 'static/contactus'
	get 'static/proyectos'
	get 'static/faq'

	get 'static/admUsuarios'
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
