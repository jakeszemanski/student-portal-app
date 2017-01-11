class ResumesController < ApplicationController

  def index 

    @student = Unirest.get "A P I", {student["email"]=> session[:email]}

    

  end

  def edit
    @student = Unirest.get("A P I", {student["email"]=> session[:email]}).body
    @experiences = Unirest.get("A P I", {expereinces["student_id"]=> @student.id}).body
    render "edit.html.erb"
  end

  def update
    
    # @student = Unirest.patch(
    #   "API",
    #   parameters: {
    #     student[expereince][start_time]
    #     }).body
  end
end

