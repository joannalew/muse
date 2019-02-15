import React from 'react';

class SearchBar extends React.Component {
    constructor(props) {
        super(props);
        this.state = { query: '' };
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    update(field) {
        return e => this.setState({ [field]: e.target.value })
    }

    handleSubmit(e) {
        e.preventDefault();
        this.props.searchJobs(this.state)
    }

    render() {
        return (
            <div className="arrange-outer">
                <div className="arrange-inner">
                    <div className="search-form-container">
                        <form onSubmit={this.handleSubmit}>
                            <label htmlFor="find-desc" className="search-label">
                                <span className="search-desc">Search Jobs</span>
                                <input className="search-input" type="text" value={this.state.query} onChange={this.update('query')} placeholder="engineer, director, Outdoor Voices..." />
                            </label>
                            <button className="search-button">Search</button>
                        </form>
                    </div>
                </div>
            </div>
        )
    }
}

export default SearchBar;