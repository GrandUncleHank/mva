class AutosController < ApplicationController
     before_action :find_auto, only: [:show, :edit, :update, :destroy]
   def index
       @autos = Auto.all.order("created_at DESC")
       @autos = Auto.paginate(:page => params[:page], :per_page => 30)
   end
   
   def show
    
   end
   
    def new
        @auto = current_user.autos.build
       
    end
    
    def create
      @auto = current_user.autos.build(auto_params)
      
      
      if @auto.save
          flash[:notice] = "Successfully created post."
          redirect_to autos_path
      else
          render 'new'
      end
    end
    
    def edit
       end

    def update
         if @auto.update(auto_params)
             flash[:notice] = "Successfully updated post."
            redirect_to auto_path(@auto)
        else
            render 'edit'
    end
    end

    def destroy
    @auto.destroy
    redirect_to autos_path
    end
    private 
   def auto_params
    params.require(:auto).permit(:title, :price, :description, :contact, :auto_img)
end

def find_auto
    @auto = Auto.find(params[:id])     
end
end
