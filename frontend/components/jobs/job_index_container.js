import { connect } from 'react-redux';
import JobIndex from './job_index';
import { fetchJobs } from '../../actions/job_actions';

const mapStateToProps = state => {
    let jobs = Object.values(state.entities.jobs);
    return ({ 
        jobs, 
        companies: state.entities.companies 
    });
};

const mapDispatchToProps = dispatch => ({
    fetchJobs: () => dispatch(fetchJobs())
});

export default connect(mapStateToProps, mapDispatchToProps)(JobIndex);