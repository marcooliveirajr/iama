class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  layout :layout_by_resource

  protect_from_forgery with: :exception

  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  WillPaginate.per_page = 10

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
  end

  def per_page
    params[:per_page] if params[:per_page].present?
  end

  def make_paginate(list)
    per_page = params[:per_page] if params[:per_page].present?
    list.paginate(page: params[:page], per_page: per_page)
  end

  def not_found(message = 'Not found')
    raise ActionController::RoutingError.new(message)
  end

  def check_admin_role
    unless current_user.admin?
      raise ActionController::RoutingError.new('not allowed')
    end
    rescue_from ActiveRecord::RecordNotFound do
      render 'errors/404', layout: 'errors', status: 404
    end
  end

  protected

  def layout_by_resource
   if devise_controller?
     'devise/application'
   else
     'application'
   end
  end
end
