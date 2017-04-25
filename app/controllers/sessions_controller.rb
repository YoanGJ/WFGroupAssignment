class SessionsController < ApplicationController
  def new
  end
  
  def create
    admin = Admin.find_by(email: params[:session][:email].downcase)
    student = Student.find_by(email: params[:session][:email].downcase)
    if admin && admin.authenticate(params[:session][:password])
      log_in_admin admin
      redirect_to admin
    elsif student && student.authenticate(params[:session][:password])
      log_in_student student
      redirect_to student
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

end
