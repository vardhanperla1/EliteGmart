// Initialize an empty cart array or fetch it from sessionStorage
let cart = JSON.parse(sessionStorage.getItem('cart')) || [];

document.addEventListener('DOMContentLoaded', () => {
    // Attach event listener to add-to-cart buttons
    document.querySelectorAll('.add-to-cart').forEach(button => {
        button.addEventListener('click', function (event) {
            event.preventDefault(); // Prevent the default link behavior

            // Extract product details from the data attributes
            const title = this.getAttribute('data-title');
            const price = parseFloat(this.getAttribute('data-price'));
            const img = this.getAttribute('data-img');

            addToCart(title, price, img);
        });
    });

    // Update the UI on page load
    updateCartUI();
});

function addToCart(title, price, img) {
    // Check if the product already exists in the cart
    const existingItem = cart.find(item => item.title === title);

    if (existingItem) {
        existingItem.quantity += 1; // Increment quantity if item exists
    } else {
        cart.push({ title, price, img, quantity: 1 }); // Add new item to cart
    }

    sessionStorage.setItem('cart', JSON.stringify(cart)); // Save cart to sessionStorage

    // Send the updated cart to the server
    fetch('/Eweb_04-06-2024_Proj/CartServlet', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(cart),
        credentials: 'include'
    })
    .then(response => {
        if (response.ok) {
            updateCartUI(); // Update UI after adding the item
        } else {
            console.error('Failed to update cart on server');
        }
    })
    .catch(error => console.error('Error updating cart on server:', error));
}

function updateCartUI() {
    // Fetch cart data from the server
    fetch('/Eweb_04-06-2024_Proj/CartServlet')
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(cart => {
            console.log('Cart fetched from server:', cart);

            let itemCount = 0;
            let totalPrice = 0;

            cart.forEach(item => {
                itemCount += item.quantity;
                totalPrice += item.quantity * item.price;
            });

            // Update cart badge in side menu
            const badge = document.querySelector('.sideMenuToggler .badge');
            if (badge) {
                badge.textContent = itemCount;
            }

            // Update cart section in home page (side menu)
            const cartListHome = document.getElementById('cart-list-home');
            const cartSubtotalHome = document.getElementById('cart-subtotal-home');
            if (cartListHome && cartSubtotalHome) {
                cartListHome.innerHTML = '';
                let cartHTMLHome = '';
                cart.forEach(item => {
                    cartHTMLHome +=
                        `<li class="woocommerce-mini-cart-item mini_cart_item">
                            <a href="#" class="remove remove_from_cart_button" data-product-name="${item.title}"><i class="far fa-times"></i></a>
                            <a href="#"><img src="${item.img}" alt="Cart Image">${item.title}</a>
                            <span class="quantity">${item.quantity} ×
                                <span class="woocommerce-Price-amount amount">
                                    <span class="woocommerce-Price-currencySymbol">&#8377;</span>${item.price.toFixed(2)}</span>
                            </span>
                        </li>`;
                });
                cartListHome.innerHTML = cartHTMLHome;
                cartSubtotalHome.innerHTML = `<span class="woocommerce-Price-currencySymbol">&#8377;</span>${totalPrice.toFixed(2)}`;
            }

            // Update cart section in cart.jsp page
            const cartListCartPage = document.getElementById('cart-list-cart-page');
            const cartSubtotalCartPage = document.getElementById('cart-subtotal-cart-page');
            const cartTotalCartPage = document.getElementById('cart-total-cart-page');

            if (cartListCartPage && cartSubtotalCartPage && cartTotalCartPage) {
                cartListCartPage.innerHTML = '';
                let cartHTMLCartPage = '';
                cart.forEach(item => {
                    cartHTMLCartPage +=
                        `<tr class="cart_item">
                            <td data-title="Product">
                                <a class="cart-productimage" href="shop-details.html"><img width="91" height="91" src="${item.img}" alt="Image"></a>
                            </td>
                            <td data-title="Name">
                                <a class="cart-productname" href="shop-details.html">${item.title}</a>
                            </td>
                            <td data-title="Price">
                                <span class="woocommerce-Price-amount amount">
                                    <span class="woocommerce-Price-currencySymbol">&#8377;</span>${item.price.toFixed(2)}
                                </span>
                            </td>
                            <td data-title="Quantity">
                                <span>${item.quantity}</span>
                            </td>
                            <td data-title="Total">
                                <span class="woocommerce-Price-amount amount">
                                    <span class="woocommerce-Price-currencySymbol">&#8377;</span>${(item.quantity * item.price).toFixed(2)}
                                </span>
                            </td>
                        </tr>`;
                });
                cartListCartPage.innerHTML = cartHTMLCartPage;
                cartSubtotalCartPage.innerHTML = `<span class="woocommerce-Price-currencySymbol">&#8377;</span>${totalPrice.toFixed(2)}`;
                cartTotalCartPage.innerHTML = `<span class="woocommerce-Price-currencySymbol">&#8377;</span>${totalPrice.toFixed(2)}`;
            }
        })
        .catch(error => console.error('Error fetching cart:', error));
}
