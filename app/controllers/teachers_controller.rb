class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      flash[:notice] = "You have clocked in/out at #{Time.now}"
      redirect_to action: :index
    else
      flash.now[:alert] = "There was an error, please try again."
      render :new
    end
  end

  private

  def teacher_params
    params.require(:teacher).permit(:name, :time_in, :time_out, :clock_type)
  end
end
