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
    @article = Article.new(school_params)
    @article.save
    redirect_to @article
  end

  private
  def school_params
    params.require(:school).permit(:name, :locality)
  end

end
