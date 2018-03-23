//
// * Fetcing API from db
// * Get objects
// * Adding value to API
//
function guid() {
  function s4() {
    return Math.floor((1 + Math.random()) * 0x10000)
      .toString(16)
      .substring(1);
  }
  return s4() + s4() + '-' + s4() + '-' + s4() + '-' + s4() + '-' + s4() + s4() + s4();
}

if (!localStorage.getItem('user')) {
  localStorage.setItem('user', `${guid()}`);
}

fetch('http://localhost:5000/api/product', {
  method: 'GET', // or 'PUT'
  headers: new Headers({
    'Accept': 'application/json',
    'Content-Type': 'application/json'
  })
}).then(res => res.json())
.then(products => {
  for (const product of products){

    const  {id:productid, description:productdescription, name:productname, price:productprice, slug:productslug, productImage:productimage} = product
    const productsList = document.querySelector('.productscontainer');

    productsList.innerHTML +=  `<div class="products">
    <img class="img" src="${productimage}" alt="">
    <p>${productname}</p>
    <p>${productdescription}</p>
    <p>Price: ${productprice}$</p>
    <button class="AddCartButton" type="submit" value="${productid}" name="button">Add to cart!</button>
    <button class="DeleteCartButton" type="submit" value="${productid}" name="button">Delete from cart!</button>
    </div>`

    const DeleteCartButtons = document.querySelectorAll('.DeleteCartButton');
    Array.from(DeleteCartButtons).forEach(DeleteCartButton => {
      DeleteCartButton.addEventListener('click', () => {
        const cookie = localStorage.getItem('user');
        const cart =
        {
          "cartid": cookie, //Le cookie
          "productid": DeleteCartButton.value
        }
        fetch('http://localhost:5000/api/cart', {
          method: 'DELETE',
          body: JSON.stringify(cart),
          headers: new Headers({
            'Accept': 'application/json',
            'Content-Type': 'application/json'
          })
        })
        .then(response => console.log('Succes:', response));
        console.log(response);
      })
    })

    const AddCartButtons = document.querySelectorAll('.AddCartButton');
    Array.from(AddCartButtons).forEach(AddCartButton => {
      AddCartButton.addEventListener('click', () => {
        const cookie = localStorage.getItem('user');
        const cart =
        {
          "cartid": cookie, //Le cookie
          "productid": AddCartButton.value
        }
        fetch('http://localhost:5000/api/cart', {
          method: 'POST', // or 'PUT'
          body: JSON.stringify(cart),
          headers: new Headers({
            'Accept': 'application/json',
            'Content-Type': 'application/json'
          })
        })
        // .then(res => res.json())
        .then(response => console.log('Success:', response));
      })
    })
  }
});
