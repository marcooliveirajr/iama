class NoauthApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  layout 'noauth_application'

  protect_from_forgery with: :exception

  def not_found(message = 'Not found')
    raise ActionController::RoutingError.new(message)
  end

  rescue_from ActiveRecord::RecordNotFound do
    render 'errors/404', layout: 'errors', status: 404
  end
end
