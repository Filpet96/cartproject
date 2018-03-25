
const userid = localStorage.getItem('user');

fetch(`http://localhost:5000/api/cart/${userid}`)
.then(response => response.json())
.then(userCart => console.log(userCart));
