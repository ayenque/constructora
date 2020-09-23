module SessionsHelper
    def log_in(usuario)
        session[:usuario_id] = usuario.id
        #session[:usuario_email] = usuario.email
        #session[:usuario_nombres] = usuario.nombres
        #session[:usuario_apellidos] = usuario.apellidos
        #session[:usuario_perfil] = usuario.perfil
    end

    def current_usuario
        @current_usuario ||= Usuario.find_by(id:   session[:usuario_id])
    end

    def logged_in?
        !current_usuario.nil?
    end

    def log_out
        session.delete(:usuario_id)
        @current_usuario = nil
    end

end