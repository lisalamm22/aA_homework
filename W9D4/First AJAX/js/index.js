console.log("Hello from the JavaScript console!");

// Your AJAX request here
$.ajax({
    url: 'http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b',
    type: 'GET',
    success(data){
        console.log(data)
    },
    error(){
        console.error('No weather')
    },
})
// Add another console log here, outside your AJAX request
console.log('At the end of the file')