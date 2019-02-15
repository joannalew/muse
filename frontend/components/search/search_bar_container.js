import { connect } from 'react-redux';
import SearchBar from './search_bar';
import { searchJobs } from '../../actions/job_actions';

const mapStateToProps = state => {
    return {};
}

const mapDispatchToProps = dispatch => ({
    searchJobs: query => dispatch(searchJobs(query))
});

export default connect(null, mapDispatchToProps)(SearchBar);