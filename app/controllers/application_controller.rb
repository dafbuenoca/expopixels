class ApplicationController < ActionController::Base
  before_action :authenticate_student!
  protect_from_forgery with: :exception
  
  rescue_from User::NotAuthorized, with: :user_not_authorized
 
  private
 
    def user_not_authorized
      flash[:error] = "You don't have access to this section."
      redirect_back(fallback_location: root_path)
    end
  
  def current_student
    @_current_student ||= session[:current_student_id] &&
    Student.find_by(id: session[:current_student_id])
  end
  
end
