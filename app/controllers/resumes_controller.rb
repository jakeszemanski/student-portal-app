class ResumesController < ApplicationController

  def index 
    @student = Unirest.get "A P I", {student["email"]=> session[:email]}
  end

  def edit
    @student = Unirest.get "A P I", {student["email"]=> session[:email]}
  end

  def update
    
  end

end

