class ExperiencesController < ApplicationController

  def edit
    @experiences = Unirest.get("A P I", {experiences["student_id"]=> session[:id]}).body
    render 'edit.html.erb'
  end

  def update
    @experience = Unirest.patch(
      "API",
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
