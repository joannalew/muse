import React from 'react';
import { Route } from 'react-router-dom';
import Home from '../components/homepage/home';
import NavbarContainer from '../components/homepage/navbar_container';
import SignupContainer from '../components/session/signup_form_container';
import LoginContainer from '../components/session/login_form_container';
import JobIndexContainer from '../components/jobs/job_index_container';
import JobShowContainer from '../components/jobs/job_show_container';
import UserProfileContainer from './profile/user_profile_container';

const App = () => (
    <div>
        <Route path="/" component={ NavbarContainer } />
        <Route exact path="/" component={ Home } />
        <Route exact path="/signup" component={ SignupContainer } />
        <Route exact path="/login" component={ LoginContainer} />
        <Route exact path="/user/:userId" component={ UserProfileContainer } />
        <Route exact path="/jobs" component={ JobIndexContainer } />
        <Route exact path="/jobs/:jobId" component={ JobShowContainer } />
    </div>
);

export default App;