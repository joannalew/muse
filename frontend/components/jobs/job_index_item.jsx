import React from 'react';
import { Link } from 'react-router-dom';

const JobIndexItem = props => {
    return (
        <li className="job-index-item">
            <div className="job-item-company">
                <div>{props.company}</div>
                <div>Location</div>
            </div>
            <div className="job-item-title">
                <div>{props.title}</div>
                <div>{props.location}</div>
            </div>
            <div className="job-item-description">
                <Link to={`/jobs/${props.job_id}`}>
                    <i className="fas fa-chevron-down"></i>
                    View Full Description
                </Link>
            </div>
        </li>
    )
};

export default JobIndexItem;
