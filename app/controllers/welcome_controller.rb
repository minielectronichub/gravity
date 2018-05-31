class WelcomeController < ApplicationController
   def index
     @branches = Branch.all
     @sems = Sem.all
     @experiments = Experiment.all
    if(params[:query] && params[:query] != '')
      @search_query = params[:query]
      @experiments = Experiment.where("title LIKE ?" , "%#{@search_query.downcase}%")
    end
  end
end