class TimeclockController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def new
  end
end
