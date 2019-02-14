import { RECEIVE_JOBS, RECEIVE_JOB } from '../actions/job_actions';
import merge from 'lodash/merge';

const companiesReducer = (oldState = {}, action) => {
    Object.freeze(oldState);

    switch(action.type) {
        case RECEIVE_JOBS:
            return action.companies;
        case RECEIVE_JOB:
            return merge({}, oldState, { [action.author.id]: action.author });
        default:
            return oldState;
    }
}

export default companiesReducer;