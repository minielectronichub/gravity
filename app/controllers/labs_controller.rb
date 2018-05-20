module DynamicSelect
class LabsController < ApplicationController
	respond_to :json

    def index
      @labs = Lab.where(:sem_id => params[:sem_id])
      respond_with(@labs)
    end
  end
end
