class SessionsController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    @student = Unirest.get "API", {student["email"]=> session[:email]}.body
    session[:student_id] = @student.id
    flash[:success] = 'You have successfully logged in!'
    redirect_to '/'
  end

  def destroy
    session[:student_id] = nil
    flash[:success] = 'You have successfully logged out!'
    redirect_to '/login'
  end
end