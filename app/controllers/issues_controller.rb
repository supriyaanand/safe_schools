class IssuesController < ApplicationController
  def index 
    @issues = Issue.all
  end
  
  def show
    @issue = Issue.find(params[:id])
    @comments = Comment.new(issue_id:params[:id])
  end
  
  def new
    @issue = Issue.new
    @schools = School.all
  end
  
  def create
    @issue = Issue.new(issue_params)
    @issue.status = "Open"
    @issue.save
    redirect_to @issue
  end

  def update_status
    @issue = Issue.find(params[:id])
    @issue.status = params[:status]
    @issue.save
    redirect_to @issue
  end

  private
  def issue_params
    params.require(:issue).permit(:school_id, :desc, :reporter_name, :reporter_email)
  end
end
