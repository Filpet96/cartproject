<?php require __DIR__.'/partials/header.view.php'; ?>

<form>
    <h3 class="mt-5 mb-5">Please fill in the details below</h3>
    <h4 class="mt-3">Contact/Delivery info</h4>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputEmail4">Email</label>
            <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
        </div>

    </div>
    <div class="form-group">
        <label for="inputAddress">Address</label>
        <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
    </div>
    <div class="form-group">
        <label for="inputAddress2">Address 2</label>
        <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputCity">City</label>
            <input type="text" class="form-control" id="inputCity">
        </div>

    </div>
    <h4 class="mt-3">Creditcard details</h4>
    <div class="form-row mt-3">
        <div class="form-group col-md-6">
            <label for="inputCity1">Card number</label>
            <input type="text" class="form-control" id="inputCity1" placeholder="XXXX-XXXX-XXXX-XXXX">
        </div>
        <div class="form-group col-md-2">
            <label for="inputZip1">CVC2</label>
            <input type="text" class="form-control" id="inputZip1" placeholder="XXX">
        </div>
    </div>
    <button type="submit" class="btn btn-dark">Order now</button>
</form>

<?php require __DIR__.'/partials/footer.view.php'; ?>
