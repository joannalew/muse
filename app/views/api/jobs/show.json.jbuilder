json.job do
    json.partial! "/api/jobs/job", job: @job
end

json.author do
    json.partial! "/api/companies/company", company: @company
end

