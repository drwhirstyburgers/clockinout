class TimeclockController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(sign_in_params)

    if @teacher.save
      flash[:notice] = "You have clocked in/out at #{Time.now}"
      render :index
    else
      flash.now[:alert] = "There was an error, please try again."
      render :new
    end
  end

  private

  def sign_in_params
    params.require(:teachers).permit(:name, :time_in, :time_out)
  end
end
