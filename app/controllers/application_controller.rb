# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include AuthenticatedSystem
  
   
  include SMS_Fu 
  # If you want "remember me" functionality, add this before_filter to Application Controller
  before_filter :login_from_cookie
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def send_sms
    deliver_sms("9025950365","telus-canada","message", :from => "masa.ash@gmail.com")
  end
end


