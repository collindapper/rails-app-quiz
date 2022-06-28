class JobsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @jobs = Job.all
    render 'jobs/index'
  end

  def create
    @job = Job.new(job_params)

    if @job.save
      render 'jobs/create'
    end
  end

  def show
    @jobs = Job.all
    render 'jobs/show'
  end

end
