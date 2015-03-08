class SchoolsController < ApplicationController

  def new
  end

  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
  end

  def create
    @school = School.new(school_params)
    @school.save
    redirect_to root_path
  end

  private
  def school_params
    params.require(:school).permit(:name, :locality)
  end

end
