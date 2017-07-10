class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    @no_link_to_init_session = true
    super
  end

  # POST /resource/sign_in
  def create
      client = Savon.client(
      wsdl: "https://login.uh.cu/WebServices/CuoteService.asmx?WSDL",
      endpoint: "https://login.uh.cu/WebServices/CuoteService.asmx",
      ssl_verify_mode: :none
      )

      # [:buscar_empleados, :buscar_empleado, :buscar_por_assets, :buscar_estudiantes, :buscar_estudiante, :buscar_estudiantes_sigenu, :buscar_empleados_ext, :buscar_usuarios_dominio, :buscar_externos, :buscar_usuarios_por_login, :get_external_users, :get_internal_users, :get_student_users] 

      # @response = client.call :get_student_users, message: { email: 'params', fullName: "", faculty: "", career: "", year: "", group: "", gender: "", hasInternet: "", hasChat: "", hasEmail: ""}


      # p client.operations
      if (User.where email: params.require(:user).permit(:email)[:email]).count != 0
      else 
        @response = client.call :estudiante_autentificarse, message: { name: params[:user][:email], password: params.require(:user).permit(:password)[:password]}
        if ! @response.body[:estudiante_autentificarse_response][:estudiante_autentificarse_result].nil?
          User.create username: params[:user][:email].split('@')[0], email: params[:user][:email], password: params.require(:user).permit(:password)[:password]
          User.last.add_role :student
        end
      end

      super
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
