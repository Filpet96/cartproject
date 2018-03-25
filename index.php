<?php
declare(strict_types=1);
require __DIR__.'/vendor/autoload.php';

use App\Http\Request;
use App\Http\Router;

$router = new Router([
  '' => __DIR__.'/controllers/index.php',
  'products' => __DIR__.'/controllers/products.php',
  'userCart' => __DIR__.'/controllers/userCart.php',
]);


try {
  require $router->direct(Request::uri());
} catch (Exception $e) {
  echo $e->getMessage();
}
?>
