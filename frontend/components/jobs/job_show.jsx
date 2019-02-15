import React from 'react';

class JobShow extends React.Component {
    componentDidMount() {
        this.props.fetchJob(this.props.jobId);
    }

    render() {
        let jobInfo = (<div></div>);
        if (this.props.jobs[this.props.jobId]) {
            let job = this.props.jobs[this.props.jobId];
            let newDescription = job.description.split('\n').map((item, i) => {
                return <p key={i}>{item}</p>
            });

            jobInfo = (
                <div>
                    <div className="job-show-header">
                        <div>
                            <div className="company-info">
                                <img src={this.props.companies[job.company_id].logo} className="job-show-logo" />
                            </div>
                            <div>
                                <div className="job-show-title">{job.title}</div>
                                <div className="job-show-location">{job.location}</div>
                            </div>
                        </div>
                        <a href={job.url} target="_blank">
                            <div className="job-show-apply">Apply For This Job</div>
                        </a>
                    </div>
                    <div className="job-show-descrip">{newDescription}</div>
                </div>
            );
        }

        return (
            <div className="arrange-outer">
                <div className="arrange-inner">
                    <div className="job-show-container">
                        {jobInfo}
                    </div>
                </div>
            </div>
        )
    }
}

export default JobShow;