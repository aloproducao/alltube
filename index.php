<?php

require_once __DIR__ . '/vendor/autoload.php';

use Alltube\App;
use Alltube\ErrorHandler;

if (isset($_SERVER['REQUEST_URI']) && strpos($_SERVER['REQUEST_URI'], '/index.php') !== false) {
    header('Location: ' . str_ireplace('/index.php', '/', $_SERVER['REQUEST_URI']));
    die;
}

try {
    // Create app.
    $app = new App();

    $app->run();
} catch (Throwable $e) {
    ErrorHandler::handle($e);
}

if (empty($_SERVER['HTTPS']) || $_SERVER['HTTPS'] === "off") {
    $location = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
    header('HTTP/1.1 301 Moved Permanently');
    header('Location: ' . $location);
    exit;
}
