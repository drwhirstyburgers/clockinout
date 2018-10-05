class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new
    @teacher.name = params[:teacher][:name]
    @teacher.time_in = params[:teacher][:time_in]
    @teacher.time_out = params[:teacher][:time_out]

    if @teacher.save
      flash[:notice] = "You have clocked in/out at #{Time.now}"
      render :index
    else
      flash.now[:alert] = "There was an error, please try again."
      render :new
    end
  end
end
