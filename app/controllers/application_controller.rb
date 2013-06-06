class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  #Force singout to prevent CSRF attacks
  def handle_unverifid_request
  	sign_out
  	super
  end
end
