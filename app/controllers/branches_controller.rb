class BranchesController < ApplicationController
	 before_action :find_lab, only: [:show]
  def index
     if params[:branch].blank?
        @labs = Lab.all.order("created_at DESC")
     else
    @branch_id = Branch.find_by(name: params[:branch).id
    @labs = Lab.where(:branch_id => @branch_id).where(branch_id: @branch_id).order("created_at DESC")
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
