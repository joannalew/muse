import React from 'react';
import { Link } from 'react-router-dom';

class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = { email: '', password: '' };
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    update(field) {
        return e => this.setState({
            [field]: e.target.value
        });
    }

    handleSubmit(e) {
        e.preventDefault();
        this.props.processForm(this.state)
            .then(() => this.props.history.push('/'));
    }

    getUserNames() {
        if (this.props.formType === 'Sign Up') {
            return (
                <div>
                    <input type="text" required
                        value={ this.state.first_name}
                        onChange={ this.update('first_name') }
                        placeholder="First Name"
                        className="login-input" />

                    <input type="text" required
                        value={ this.state.last_name}
                        onChange={ this.update('last_name') }
                        placeholder="Last Name"
                        className="login-input" />
                </div>
            )
        }
        return '';
    }

    componentWillUnmount() {
        this.props.clearErrors()
    }

    render() {
        return (
            <div>
                <div>{ this.props.formType }</div>
                <form onSubmit={ this.handleSubmit } className="session-form">
                    { this.getUserNames() }
                    <div>
                        <input type="email" required
                            value={ this.state.email}
                            onChange={ this.update('email') }
                            placeholder="Email"
                            className="login-input" />
                    </div>
                    <div>
                        <input type="password" required
                            value={ this.state.password}
                            onChange={ this.update('password') }
                            className="login-input" />
                    </div>

                    <input className="session-submit" type="submit" value={ this.props.formType } />
                </form>

            </div>
        )
    }    
}

export default SessionForm;