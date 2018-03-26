const userid = localStorage.getItem('user');


fetch(`http://localhost:5000/api/cart/${userid}`, {
  method: 'GET', // or 'PUT'
  headers: new Headers({
    'Accept': 'application/json',
    'Content-Type': 'application/json'
  })
})
.then(response => response.json())
.then(userCarts => {
  for (const userCart of userCarts){
    const productsList = document.querySelector('.productscontainer');
    productsList.innerHTML +=  `
    <div class="products-cart col-md-6 row">
      <ul class="list-group">
        <li class="list-group-item"><img class="img-cart" src="${userCart.productImage}" alt=""></li>
        <li class="list-group-item"><p>Brand: ${userCart.name}</p></li>
        <li class="list-group-item"><p>Description: ${userCart.description}</p></li>
        <li class="list-group-item"><p>Price: ${userCart.price}$</p></li>
        <button class="DeleteCartButton btn btn-dark mt-3 mb-3" type="button" value="${userCart.id}" name="button">Delete from cart!</button>
      </ul>
    </div>`

    const DeleteCartButtons = document.querySelectorAll('.DeleteCartButton');
    Array.from(DeleteCartButtons).forEach(DeleteCartButton => {
      DeleteCartButton.addEventListener('click', () => {
        fetch(`http://localhost:5000/api/cart/${userid}/${DeleteCartButton.value}`, {
          method: 'DELETE',
          headers: new Headers({
            'Accept': 'application/json',
            'Content-Type': 'application/json'
          })
        })
        .then(response => console.log('Succes:', response))
      })
    })
  }
});
