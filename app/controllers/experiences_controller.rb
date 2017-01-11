class ExperiencesController < ApplicationController

  def edit
    @experiences = Unirest.get("https://desolate-island-36210.herokuapp.com/api/v1/students/#{session[:id]}/experiences").body
    render 'edit.html.erb'
  end

  def update
    @experience = Unirest.patch(
      "https://desolate-island-36210.herokuapp.com/api/v1/experiences/#{params[:id]}",
      parameters: {
        start_time: params[:start_time],
        end_time: params[:end_time],
        job_title: params[:job_title],
        company_name: params[:company_name],
        details: params[:details]
        }
        ).body
    redirect_to "/students/resume/#{session[:id]}"
  end
end
