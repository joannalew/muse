import { RECEIVE_JOBS, RECEIVE_JOB } from '../actions/job_actions';
import merge from 'lodash/merge';

const jobsReducer = (oldState = {}, action) => {
    Object.freeze(oldState);

    switch(action.type) {
        case RECEIVE_JOBS:
            return action.jobs;
        case RECEIVE_JOB:
            return merge({}, oldState, { [action.job.id ]: action.job });
        default:
            return oldState;
    }
};

export default jobsReducer;