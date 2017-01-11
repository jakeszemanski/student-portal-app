class ResumesController < ApplicationController

  def index 

    @experiences = Unirest.get("A P I", experiences["student_id"]=> session[:id])
    @educations = Unirest.get("A P I", educations["student_id"]=> session[:id])
    @skills = Unirest.get("A P I", skills["student_id"]=> session[:id])
  end
end

