class EducationsController < ApplicationController

  def edit
    @educations = Unirest.get("A P I", {educations["student_id"]=> session[:id]}).body
    render 'edit.html.erb'
  end

  def update
    @education = Unirest.patch(
      "API",
      parameters: {
        start_date: params[:start_date],
        end_date: params[:end_date],
        degree: params[:degree],
        university_name: params[:university_name],
        details: params[:details]
        }
        ).body
    redirect_to "/students/resume/#{session[:id]}"
  end
end