<?php
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Factory\AppFactory;

require __DIR__ . '/../extensions/import.php';

require __DIR__ . '/../vendor/autoload.php';

$app = new \Slim\App;

//Api
$app->get('/', function (Request $request, Response $response, $args) {
    include_once('../freshshop/index.html');

});

$app->get('/hello/{name}', function (Request $request, Response $response, $args) {
    $name = $request->getAttribute('name');
    $response->getBody()->write("Hello  $name");

    return $response;
});



$app->run();