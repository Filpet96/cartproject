setTimeout(function(){
    const productDelete = document.querySelectorAll('.DeleteCartButton');
    productDelete.forEach((product) => {
        product.addEventListener('click', () => {
            const Delete = document.querySelectorAll('.Delete');
            Delete.forEach((DeleteBlock) => {
                DeleteBlock.style.display = "flex";
                setTimeout(function(){
                    DeleteBlock.style.display = "none";
                }, 2000);
            })
        })
    })
}, 1000);
