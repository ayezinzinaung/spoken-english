<?php

namespace Helpers;

class HTTP
{
    static $base = "http://localhost/SE";

    static function redirect($path, $query = "")
    {
        $url = static::$base . $path;
        if($query) $url .= "?$query";

        header("location: $url");
        die();
    }
}