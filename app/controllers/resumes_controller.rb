class ResumesController < ApplicationController
  def show

    @experiences = Unirest.get("https://desolate-island-36210.herokuapp.com/students/#{session[:id]}/experiences").body
    @educations = Unirest.get("https://desolate-island-36210.herokuapp.com/educations").body
    @skills = Unirest.get("A P I", skills["student_id"]=> session[:id]).body

    render 'show.html.erb'
  end
end

