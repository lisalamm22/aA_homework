import { connect } from 'react-redux';
import GiphysSearch from './giphys_search';
import { fetchSearchGiphys } from '../actions/giphy_actions';


const mapStateToProps = (state) => {
    const giphys = Object.values(state.giphys)
    return({
        giphys: giphys
    })
}

const mapDispatchToProps = (dispatch) => {
    return({
        fetchSearchGiphys: (searchTerm) => {
            return dispatch(fetchSearchGiphys(searchTerm))
        }
    })
}

export default connect(mapStateToProps ,mapDispatchToProps)(GiphysSearch)