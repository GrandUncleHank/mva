class JobsController < ApplicationController
     before_action :find_job, only: [:show, :edit, :update, :destroy]
   def index
       @jobs = Job.all.order("created_at DESC")
   end
   
   def show
    
   end
   
    def new
        @job = current_user.jobs.build
    end
    
    def create
      @job = current_user.jobs.build(job_params)
      
      if @job.save
          redirect_to jobs_path
      else
          render 'new'
      end
    end
    
    def edit
       end

    def update
         if @job.update(job_params)
            redirect_to job_path(@job)
        else
            render 'edit'
    end
    end

    def destroy
    @job.destroy
    redirect_to jobs_path
    end
    private 
   def job_params
    params.require(:job).permit(:title, :description, :contact)
end

def find_job
    @job = Job.find(params[:id])     
end
end

