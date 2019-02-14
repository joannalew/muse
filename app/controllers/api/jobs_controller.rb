class Api::JobsController < ApplicationController
    def index
        @jobs = Job.all
        render :index
    end

    def create
        @job = Job.create!(job_params)
        @company = @job.company
        render :show
    end

    def show
        @job = Job.find(params[:id])
        @company = @job.company
        render :show
    end

    private
    def job_params
        params.require(:job).permit(:title, :description, :location, :url, :company_id)
    end
end

