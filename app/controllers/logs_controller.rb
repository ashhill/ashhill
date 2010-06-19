class LogsController < ApplicationController
  
  def show
    @log = Log.find(params[:id])
  end
  
  def index
    @logs = Log.find(:all).sort_by(&:created_at)  
  end
  
  def new
    @log = Log.new
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
