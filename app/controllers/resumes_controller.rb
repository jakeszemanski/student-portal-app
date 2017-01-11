class ResumesController < ApplicationController
  def show

    @experiences = Unirest.get("A P I", experiences["student_id"]=> session[:id]).body
    @educations = Unirest.get("A P I", educations["student_id"]=> session[:id]).body
    @skills = Unirest.get("A P I", skills["student_id"]=> session[:id]).body

    render 'show.html.erb'
  end
end

