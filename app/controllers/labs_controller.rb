class LabsController < ApplicationController
 before_action :find_lab, only: [:show]

  def index
    @labs = Lab.all
    if params[:sem_id]
      @sem = Sem.find(params[:sem_id])
      @labs = @labs.where(sem_id: @sem.id)
      if params[:branch_id]
        @branch = Branch.find(params[:branch_id])
        @labs = @labs.where(branch_id: @branch.id)
      end
    else
      if params[:branch_id]
        @branch = Branch.find(params[:branch_id])
        @labs = @labs.where(branch_id: @branch.id)
      end
    end
    @labs = @labs.order("created_at DESC")
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
