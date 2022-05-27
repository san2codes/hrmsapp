class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    skip_before_action :verify_authenticity_token
    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :employee_id, :role_id])
    end

    def after_sign_in_path_for(resource)
        if current_employee
            landingpage_path
        else
            render root_path
        end
           
    end

    
end

