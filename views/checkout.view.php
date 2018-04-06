<?php require __DIR__.'/partials/header.view.php'; ?>

<div class="orderContainer">
    <h3 class="mt-5 mb-5">Please fill in the details below</h3>
    <h4 class="mt-3">Contact/Delivery info</h4>

    <label for="inputEmail4">First name</label>
    <input type="text" class="form-control" name="firstname" placeholder="Karl" required>

    <label for="inputEmail4">Last name</label>
    <input type="text" class="form-control" name="lastname" placeholder="Karlsson" required>

    <label for="inputEmail4">Email</label>
    <input type="email" class="form-control" name="email" placeholder="Email" required>

    <label for="inputAddress">Address</label>
    <input type="text" class="form-control" name="address" placeholder="1234 Main St" required>

    <label for="inputCity">City</label>
    <input type="text" class="form-control" name="city" required>

    <h4 class="mt-3">Creditcard details</h4>
    <label for="inputCity1">Card number</label>
    <input class="form-control" name="creditcard" type="number" placeholder="XXXX-XXXX-XXXX-XXXX" required>

    <label for="inputZip1">CVC2</label>
    <input class="form-control" name="cvc" type="number" placeholder="XXX" required>

    <button type="submit" class="btn btn-dark orderButton">Order now</button>
</div>

<?php require __DIR__.'/partials/footer.view.php'; ?>
