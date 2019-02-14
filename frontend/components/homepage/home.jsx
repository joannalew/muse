import React from 'react';
import NavbarContainer from './navbar_container';
import JobIndexContainer from '../jobs/job_index_container';

const Home = () => {
    return (
        <div>
            <NavbarContainer />
            <JobIndexContainer />
        </div>
    )
};

export default Home;