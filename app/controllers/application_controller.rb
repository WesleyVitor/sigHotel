class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    include Pundit::Authorization

    
    
    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password])
            #devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :current_password])
        end
end
