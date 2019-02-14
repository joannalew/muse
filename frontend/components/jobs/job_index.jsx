import React from 'react';
import JobIndexItem from './job_index_item';

class JobIndex extends React.Component {
    componentDidMount() {
        this.props.fetchJobs();
    }

    render() {
        let jobs = this.props.jobs.map(job => {
            return (
                <JobIndexItem 
                    key={job.id}
                    company={this.props.companies[job.company_id].name}
                    title={job.title}
                    location={job.location}
                    job_id={job.id}
                />
            )
        });

        return (
            <div className="arrange-outer">
                <div className="arrange-inner">
                    <ul className="job-index-list">
                        { jobs }
                    </ul>
                </div>
            </div>
        )
    }
}

export default JobIndex;