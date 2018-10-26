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
      flash[:notice] = "You have clocked in at #{Time.now}"
      redirect_to action: :index
    else
      flash.now[:alert] = "There was an error, please try again."
      render :new
    end
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])
    @teacher.assign_attributes(teacher_params)

    if @teacher.save
      flash[:notice] = "You have clocked out at #{Time.now}"
      redirect_to action: :index
    else
      flash.now[:alert] = "There was an error, please try again."
      render :edit
    end
  end

  private

  def teacher_params
    params.require(:teacher).permit(:name, :time_in, :time_out, :clock_type)
  end
end
