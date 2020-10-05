import React from 'react';

import GiphysIndex from './giphys_index';


class GiphysSearch extends React.Component {
    constructor(){
        super()
        this.state = {searchTerm: ''}
        this.handleSubmit = this.handleSubmit.bind(this)
        this.handleChange = this.handleChange.bind(this)
    }

    handleChange(e){
       this.setState({searchTerm: e.target.value})
    }

    handleSubmit(e){
        e.preventDefault();
        debugger
        let searchTerm = this.state.searchTerm.split(' ').join('+');
        this.props.fetchSearchGiphys(searchTerm)

    }

    render(){
        let { giphys } = this.props;
        return (
            <div>
                <form onSubmit={this.handleSubmit}>
                    <input type="text" onChange={this.handleChange}/>
                    <input type="submit" value="Search" />
                </form>
                <GiphysIndex giphys={giphys} />
            </div>
        )
    }
}

export default GiphysSearch;

