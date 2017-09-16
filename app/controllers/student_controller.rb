class StudentController < ApplicationController
  def new
    @student=student.new
  end
  def print_student
    @student = params[:email][:username]
  end
end
