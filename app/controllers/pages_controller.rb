class PagesController < ApplicationController
  def index
  end

  def create
    @projects = Project.create(
      name: params[:name], 
      description: params[:description], 
      start_date: params[:start_date], 
      end_date: params[:end_date], 
      status: params[:status])
  end

  def dashboard
    #@projects = Project.all
    if params[:status].present?
      @projects = Project.where('status = ?', params[:status])
    else
      @projects = Project.all
    end
  end

end
