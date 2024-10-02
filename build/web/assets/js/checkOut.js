document.addEventListener('DOMContentLoaded', function() {
    displayCheckoutCartItems();
});


function displayCheckoutCartItems() {
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    let checkoutTableBody = document.querySelector('.woocommerce-cart-form .cart_table tbody');

    checkoutTableBody.innerHTML = ''; // Clear existing items

    cart.forEach(item => {
        let row = `
            <tr class="cart_item">
                <td data-title="Product">
                    <a class="cart-productimage" href="${item.productLink}"><img width="91" height="91" src="${item.img}" alt="Image"></a>
                </td>
                <td data-title="Name">
                    <a class="cart-productname" href="${item.productLink}">${item.title}</a>
                </td>
                <td data-title="Price">
                    <span class="amount"><bdi><span>&#8377;</span>${item.price.toFixed(2)}</bdi></span>
                </td>
                <td data-title="Quantity">
                    <strong class="product-quantity">${item.quantity}</strong>
                </td>
                <td data-title="Total">
                    <span class="amount"><bdi><span>&#8377;</span>${(item.quantity * item.price).toFixed(2)}</bdi></span>
                </td>
            </tr>
        `;
        checkoutTableBody.insertAdjacentHTML('beforeend', row);
    });

    updateCheckoutCartTotals(cart); // Pass cart as an argument to calculate totals
}

function updateCheckoutCartTotals(cart) {
    let subtotal = cart.reduce((acc, item) => acc + (item.quantity * item.price), 0); // Calculate subtotal
    
    let shipping = 0; // You can set shipping cost here if applicable
    let total = subtotal + shipping; // Calculate total

    document.getElementById('cart-subtotal-cart-page').textContent = subtotal.toFixed(2); // Update subtotal
    document.getElementById('cart-total-cart-page').textContent = total.toFixed(2); // Update total
}





// function displayCheckoutCartItems() {
//     let cart = JSON.parse(localStorage.getItem('cart')) || [];
//     let checkoutTableBody = document.querySelector('.woocommerce-cart-form .cart_table tbody');

//     checkoutTableBody.innerHTML = ''; // Clear existing items

//     cart.forEach(item => {
//         let row = `
//             <tr class="cart_item">
//                 <td data-title="Product">
//                     <a class="cart-productimage" href="${item.productLink}"><img width="91" height="91" src="${item.img}" alt="Image"></a>
//                 </td>
//                 <td data-title="Name">
//                     <a class="cart-productname" href="${item.productLink}">${item.title}</a>
//                 </td>
//                 <td data-title="Price">
//                     <span class="amount"><bdi><span>&#8377;</span>${item.price.toFixed(2)}</bdi></span>
//                 </td>
//                 <td data-title="Quantity">
//                     <strong class="product-quantity">${item.quantity}</strong>
//                 </td>
//                 <td data-title="Total">
//                     <span class="amount"><bdi><span>&#8377;</span>${item.quantity * item.price.toFixed(2)}</bdi></span>
//                 </td>
//             </tr>
//         `;
//         checkoutTableBody.insertAdjacentHTML('beforeend', row);
//     });

//     updateCheckoutCartTotals();
// }

// function updateCheckoutCartTotals() {
//     let cart = JSON.parse(localStorage.getItem('cart')) || [];
//     let subtotal = cart.reduce((acc, item) => acc + item.productTotal, 0);
    
//     document.getElementById('cart-subtotal-cart-page').textContent = totalPrice.toFixed(2);
//     document.getElementById('cart-total-cart-page').textContent = totalPrice.toFixed(2);
// }