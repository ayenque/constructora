class SessionsController < ApplicationController
    include SessionsHelper

    def new
    end

    def create
        user = Usuario.find_by(email: params[:session][:email], password: params[:session][:password])

        if user
            log_in user

            redirect_to :root
        else
            flash[:danger] = 'Credenciales no validas.'
            render "static/faq"
        end
    end

    def destroy
        log_out if logged_in?
        redirect_to :root
    end
end