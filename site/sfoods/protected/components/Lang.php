<?php

class Lang {
    public static $i18n = array(
        "orderStatus" => array(
            "1" => "已下单",
        ),
    );
    static function get($key, $v){
        return self::$i18n[$key][$v];
    }
}