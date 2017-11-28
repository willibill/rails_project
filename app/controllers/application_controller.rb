class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include SessionsHelper

  #does not let someone see the rest of the website unless he is connected
  def authorize
   unless current_user
   respond_to do |format|
     format.html { redirect_to "http://localhost:3000/" , notice: 'Please sign in!.' }
   end
   end
   end

   #only the admin can access some pages
   def adminonly
    unless current_user.is_admin?
    respond_to do |format|
      format.html { redirect_to "http://localhost:3000/" , notice: 'You are not allowed to access this page. Please contact an admin for authorisations!' }
    end
    end
    end







end
