class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  #Force singout to prevent CSRF attacks
  def hanlde_unverifid_reques
  	sign_out
  	super
  end
end
