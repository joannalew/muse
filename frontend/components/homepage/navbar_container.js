import { connect } from 'react-redux';
import { login, logout } from '../../actions/session_actions';
import Navbar from './navbar';

const mapStateToProps = (state) => ({
    currentUser: state.session,
    users: state.entities.users
});

const mapDispatchToProps = dispatch => ({
    logout: () => dispatch(logout()),
    demoLogin: () => dispatch(login({email: 'demouser@example.com', password: 'password'}))
});

export default connect(mapStateToProps, mapDispatchToProps)(Navbar);