setTimeout(function(){
    const productAdded = document.querySelectorAll('.AddCartButton');
    productAdded.forEach((product) => {
        product.addEventListener('click', () => {
            const added = document.querySelectorAll('.Added');
            added.forEach((addBlock) => {
                addBlock.style.display = "flex";
                setTimeout(function(){
                    addBlock.style.display = "none";
                }, 2000);
            })
        })
    })
}, 1000);
