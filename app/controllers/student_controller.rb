class StudentController < ApplicationController
  def new
    @student=Student.new
  end
  def print_student
    @student = params[:email][:username]
  end
end
# 4.1 hash se hace por defecto al hacer envio post de la gema devise
def list
  @students= Student.all
  end

  def show
    @student = Student.find(params[:id])
  end


  def create
    @student = Student.new(book_params)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    student = Student.find(params[:id])

      if @student.update_attributes(book_param)
         redirect_to :action => 'show', :id => @student
      end
  end

  def delete
    Student.find(params[:id]).destroy
      redirect_to :action => 'list'
  end
  def student_params
   params.require(:email,:username).permit(:age, :iq, :grade, :who_likes_him)
end
