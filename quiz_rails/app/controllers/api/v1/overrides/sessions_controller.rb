module Api::V1::Overrides
  class SessionsController < DeviseTokenAuth::SessionsController

    def destroy
      binding.pry
      super
    end

    protected

    def render_new_error
      render json: {
        errors: [ I18n.t("devise_token_auth.sessions.not_supported")]
      }, status: 405
    end

    def render_create_success
      render json: {
        data: resource_data(resource_json: @resource.token_validation_response)
      }
    end

    def render_create_error_not_confirmed
      render json: {
        success: false,
        errors: [ I18n.t("devise_token_auth.sessions.not_confirmed", email: @resource.email) ]
      }, status: 401
    end

    def render_create_error_bad_credentials
      render json: {
        errors: [I18n.t("devise_token_auth.sessions.bad_credentials")]
      }, status: 401
    end

    def render_destroy_success
      render json: {
        success:true
      }, status: 200
    end

    def render_destroy_error
      render json: {
        errors: [I18n.t("devise_token_auth.sessions.user_not_found")]
      }, status: 404
    end
  end
end