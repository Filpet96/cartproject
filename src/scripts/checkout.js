const userid = localStorage.getItem('user');

const button = document.querySelector('.orderButton')
button.addEventListener('click', () => {
    const input = document.querySelectorAll('.orderContainer input');
    const values = [];
    input.forEach((elem) => {
        values[elem.name] = elem.value;
    })
    test(values);
});
function test(input) {
    fetch(`http://localhost:5000/api/order`, {
        method: 'POST',
        body: JSON.stringify({
            'userid': localStorage.user,
            'firstname': input['firstname'],
            'lastname': input['lastname'],
            'email': input['email'],
            'address': input['address'],
            'city': input['city'],
            'creditcard': input['creditcard'],
            'cvc': input['cvc'],
        }),
        headers: new Headers({
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        })
    })
    .then((response) => {
        if (response) {
            localStorage.removeItem('user');
            window.location.href = 'order';
        }
    })    
}
