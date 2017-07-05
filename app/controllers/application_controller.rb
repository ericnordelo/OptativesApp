class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do
  	redirect_to root_path, notice: "Lo siento, permisos insuficientes para realizar esta acción. Si piensa que esto es un error, consulte al administrador de la aplicación."
  end

end
