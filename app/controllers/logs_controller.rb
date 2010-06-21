class LogsController < ApplicationController
  
  def show
    @log = Log.find(params[:id])
  end
  
  def index
    @logs = Log.find(:all).sort_by(&:created_at)  
  end
  
  def new
    unless current_user == :false
      @log = Log.new
    else
      flash[:error] = 'You must login to create a post!'
      redirect_to '/logs'
    end
  end
  
  def create
    @log = Log.new(params[:log])
    @log.user_id = current_user.id
    if @log.save
      redirect_to @log
    else
      render :action => 'new'
    end
  end
  
  def edit
    @log = Log.find(params[:id])
  end
  
  def update
    @log = Log.find(params[:id])
    if @log.update_attributes(params[:log])
      redirect_to logs_path
    else
      render :action => "edit"
    end
  end
  
  def destroy
    @log = Log.find(params[:id])
    @log.destroy
    redirect_to :back
  end
  
end
