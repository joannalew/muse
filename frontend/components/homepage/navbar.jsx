import React from 'react';
import { Link } from 'react-router-dom';

const Navbar = props => {
    let userNav = (
        <ul className="user-nav-container">
            <li className="greeting-item"><Link to='/login'>Log In</Link></li>
            <li className="greeting-item"><Link to='/signup'>Sign Up</Link></li>
            <button onClick={props.demoLogin}>Demo Log In</button>
        </ul>
    );
    if (props.currentUser.id) {
        userNav = (
            <div className="greeting-container">
                <div className="greeting-item">Hi, {props.users[props.currentUser.id].first_name}!</div>
                <button onClick={props.logout}>Log Out</button>
            </div>
        );
    }

    return (
        <div className="header-container">
            <div className="arrange-outer">
                <div className="arrange-inner">
                    <div className="header">
                        <Link to='/'>
                            <div className="header-logo-image">
                                <img src="https://i.imgur.com/yrjcatk.png"></img>
                            </div>
                        </Link>
                        <div>
                            {userNav}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
};

export default Navbar;
