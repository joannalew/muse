import React from 'react';
import JobIndexContainer from '../jobs/job_index_container';
import SearchBarContainer from '../search/search_bar_container';

const Home = () => {
    return (
        <div>
            <SearchBarContainer />
            <JobIndexContainer />
        </div>
    )
};

export default Home;