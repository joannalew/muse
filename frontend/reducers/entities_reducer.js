import { combineReducers } from 'redux';
import usersReducer from './users_reducer';
import jobsReducer from './jobs_reducer';
import companiesReducer from './companies_reducer';

const entitiesReducer = combineReducers({
    users: usersReducer,
    jobs: jobsReducer,
    companies: companiesReducer
});

export default entitiesReducer;