<?php

class FetchUrl {


    function __construct() {
    }

    public function get($url) {
        return file_get_contents($url);
    }
}