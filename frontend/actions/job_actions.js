import * as JobsApiUtil from '../util/jobs_api_util';
import * as SearchApiUtil from '../util/search_api_util';

export const RECEIVE_JOBS = "RECEIVE_JOBS";
export const RECEIVE_JOB = "RECEIVE_JOB";

const receiveJobs = ({ jobs, companies }) => ({
    type: RECEIVE_JOBS,
    jobs,
    companies
});

const receiveJob = ({ job, author }) => ({
    type: RECEIVE_JOB,
    job,
    author
});

export const fetchJobs = () => dispatch => (
    JobsApiUtil.fetchJobs()
        .then(payload => dispatch(receiveJobs(payload)))
);

export const fetchJob = id => dispatch => (
    JobsApiUtil.fetchJob(id)
        .then(payload => dispatch(receiveJob(payload)))
);

export const searchJobs = query => dispatch => (
    SearchApiUtil.searchJobs(query)
        .then(payload => dispatch(receiveJobs(payload)))
);