class AutosController < ApplicationController
     before_action :find_auto, only: [:show, :edit, :update, :destroy]
   def index
       @autos = Auto.all.order("created_at DESC")
   end
   
   def show
    
   end
   
    def new
        @auto = Auto.new
    end
    
    def create
      @auto = Auto.new(auto_params)
      
      if @auto.save
          redirect_to autos_path
      else
          render 'new'
      end
    end
    
    def edit
       end

    def update
         if @auto.update(auto_params)
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
    params.require(:auto).permit(:title, :price, :description, :contact)
end

def find_auto
    @auto = Auto.find(params[:id])     
end
end
