class CapstonesController < ApplicationController
  def show
    @capstone = {name: "sam", description: "d", url: "C", student_id: 5}
    # @capstone = Unirest.get("//#{params[:id]}").body
    render 'show.html.erb'
  end
  def edit 
    @capstone = Unirest.get'#{params[:id]}'
    @capstone 
    render 'edit.html.erb'
  end


    def update
     # @capstone = Unirest.patch(#{params[:id]}",
       # parameters: {
         # name: params[:sam],
         # description: params[:description],
         # url: params[:url], 
         # student_id: params[:url]
         
        
      # }
    # ).body
     redirect_to "/capstone/#{@capstone['id']}"
   end

  end

