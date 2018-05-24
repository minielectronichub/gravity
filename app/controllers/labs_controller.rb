class LabsController < ApplicationController
 before_action :find_lab, only: [:show]
  def index
     if params[:sem].blank?
        @labs = Lab.all.order("created_at DESC")
     else
    @sem_id = Sem.find_by(name: params[:sem]).id
    @labs = Lab.where(:sem_id => @sem_id).order("created_at DESC")
   end
  end

  def show 
     @lab = Lab.find(params[:id])
     @experiments = @lab.experiments.limit(50)
  end
  private 
  def lab_params
    params.require(:lab).permit(:name)   
  end
   def find_lab
   @lab = Lab.find(params[:id])
  end
end
