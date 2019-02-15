import { connect } from 'react-redux';
import UserProfile from './user_profile';

const mapStateToProps = state => {
    console.log('user state', state);
    return {user: state.entities.user}
};

const mapDispatchToProps = dispatch => ({
    
});

export default connect(mapStateToProps, null)(UserProfile);