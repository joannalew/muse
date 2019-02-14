@jobs.each do |job|
    json.jobs do 
        json.set! job.id do 
            json.partial! '/api/jobs/job', job: job
        end
    end

    json.companies do
        json.set! job.company_id do
            json.partial! 'api/companies/company', company: job.company
        end
    end
end
