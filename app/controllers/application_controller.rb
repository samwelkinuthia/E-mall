class ApplicationController < ActionController::Base
  #imported Concerns
  include Response
  include ExceptionHandler

  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to  main_app.root_url, :alert => exception.message
  end
end
