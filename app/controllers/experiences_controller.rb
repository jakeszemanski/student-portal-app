class ExperiencesController < ApplicationController

  def edit
    @experiences = Unirest.get("A P I", {experiences["student_id"]=> session[:id]}).body
    render 'edit.html.erb'
  end

  def update
    # @student = Unirest.patch(
    #   "API",
    #   parameters: {
    #     student[experience]["start_time"]}).body
  end
end
