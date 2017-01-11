class SkillsController < ApplicationController

  def edit
@skills = Unirest.get("API", {skills["student_id"]=> session[:id]}).body
  end
render 'edit.html.erb'
  def update
    #@skills = Unirest.patch(#{params[:id]}",
    # parameters: {
      #skill_name: params[:skill_name],
     
      # }
#redirect_to "/students/resume/#{session[:id]"

  end
end
