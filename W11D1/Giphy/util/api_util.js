
export const fetchSearchGiphys = (searchTerm) => {
    return $.ajax({
        url: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=iujHAfA74eES68eyZv5BQJktg2Y626cH&limit=2 `,
        method: `get`
    })
}