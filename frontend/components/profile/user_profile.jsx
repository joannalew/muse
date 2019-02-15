import React from 'react';

class UserProfile extends React.Component {
    render() {
        console.log('user prof', this.props);
        return (<div>This is the user profile.</div>);
    }
}

export default UserProfile;