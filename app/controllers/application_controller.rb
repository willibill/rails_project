class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include SessionsHelper

  def authorize
   unless current_user
   respond_to do |format|
     format.html { redirect_to "http://5.135.175.184/" , notice: 'Please sign in!.' }
   end
   end
   end


   def adminonly
    unless current_user.is_admin?
    respond_to do |format|
      format.html { redirect_to "http://5.135.175.184/" , notice: 'You are not allowed to access this page. Please contact an admin for authorisations!' }
    end
    end
    end







end
