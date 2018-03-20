const productsLists = document.querySelectorAll('.products');

const url = "http://localhost:5000/api/product";

Array.from(productsLists).forEach(productsList => {
  productsList.addEventListener('load', () => {
    let products = productsList.value;
    fetch(url)
    .then(response => {
      return response.json()
    })
    .then(response => {
      console.log(response);
      // var newDiv = document.createElement("div");
      // var newContent = document.createTextNode(response.length);
      // newDiv.appendChild(newContent);
      // var currentDiv = document.getElementsByClassName('products');
      // document.body.insertBefore(newDiv, currentDiv);
    })
  })
});
