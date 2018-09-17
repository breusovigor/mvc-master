<?php
return [
    'news/([a-zA-Z]+)/([a-zA-Z]+)' => 'news/detail/$2',
    'news/([a-zA-Z]+)' => 'news/index/$1',
    'news' => 'news/index',
    'comment' => 'comments/index',
    'about' => 'about/index',
    'contact' => 'contact/index',
    'search' => 'search/index',
    '^\s*$' => 'index/index',
    '' => '/index'
];

?>