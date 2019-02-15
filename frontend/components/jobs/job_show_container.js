import { connect } from 'react-redux';
import { fetchJob } from '../../actions/job_actions';
import JobShow from './job_show';

const mapStateToProps = (state, ownProps) => {
    console.log('state', state);
    console.log('ownProps', ownProps);

    const jobId = parseInt(ownProps.match.params.jobId);
    return {
        currentUser: state.entities.users[state.session.id],
        companies: state.entities.companies,
        jobs: state.entities.jobs,
        jobId
    }
};

const mapDispatchToProps = dispatch => ({
    fetchJob: id => dispatch(fetchJob(id))
});

export default connect(mapStateToProps, mapDispatchToProps)(JobShow);