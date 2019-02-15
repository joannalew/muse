class Api::SearchesController < ApplicationController
    def job_search
        query = params[:query][:job]
        queryTitle = query.split(' ').map do |str|
            str = "LOWER(title) LIKE '%#{str.downcase}%'"
        end.join(" OR ");

        queryCompany = query.split(' ').map do |str|
            str = "LOWER(name) LIKE '%#{str.downcase}%'"
        end.join(" OR ");

        queryLocation = "LOWER(location) = '#{query.downcase}'"

        @jobs = Job.where('(' + queryTitle + ')')
        @company = Company.where('(' + queryCompany + ')')

        @jobs = @company[0].jobs if !@company.empty? && @jobs.empty?
        @jobs = Job.where('(' + queryLocation + ')') if @jobs.empty?
        @jobs = Job.all if @jobs.empty?
        
        render '/api/jobs/index'
    end

end
