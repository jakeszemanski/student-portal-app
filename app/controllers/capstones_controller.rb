class CapstonesController < ApplicationController

  def show
     @capstone = Unirest.get("//#{params[:id]}").body
    render 'show.html.erb'
  end
  def edit 
    @capstone = Unirest.get'#{params[:id]}'
    @capstone 
    render 'edit.html.erb'
  end

    def update
     @capstone = Unirest.patch(#{params[:id]}",
       parameters: {
         photo: params[:photo],
         description: params[:description],
        
       }
     ).body
     redirect_to "/capstone/#{@capstone['id']}"
   end
  end
  #update patch
  #show get
