<?php
// HTTP
define('HTTP_SERVER', 'http://'.$_SERVER['HTTP_HOST'].'/riwigo/riwigo/admin/');
define('HTTP_CATALOG', 'http://'.$_SERVER['HTTP_HOST'].'/riwigo/riwigo/');
define('HTTP_CATALOG_IMAGE', 'http://'.$_SERVER['HTTP_HOST'].'/riwigo/riwigo/image/');

// HTTPS
define('HTTPS_SERVER', 'http://'.$_SERVER['HTTP_HOST'].'/riwigo/riwigo/admin/'); 
define('HTTPS_CATALOG', 'http://'.$_SERVER['HTTP_HOST'].'/riwigo/riwigo/');

// DIR
define('DOCUMENT_ROOT', $_SERVER['DOCUMENT_ROOT'].'/riwigo/riwigo');
define('DIR_APPLICATION', DOCUMENT_ROOT.'/admin/');
define('DIR_IMAGEDIR', DOCUMENT_ROOT.'/image/catalog/');
define('DIR_SYSTEM', DOCUMENT_ROOT.'/system/');
define('DIR_LANGUAGE', DOCUMENT_ROOT.'/admin/language/');
define('DIR_TEMPLATE', DOCUMENT_ROOT.'/admin/view/template/');
define('DIR_CONFIG', DOCUMENT_ROOT.'/system/config/');
define('DIR_IMAGE', DOCUMENT_ROOT.'/image/');

define('DIR_CACHE', DOCUMENT_ROOT.'/system/storage/cache/');
define('DIR_DOWNLOAD', DOCUMENT_ROOT.'/system/download/');
define('DIR_UPLOAD', DOCUMENT_ROOT.'/system/upload/');
define('DIR_LOGS', DOCUMENT_ROOT.'/system/storage/logs/');
define('DIR_MODIFICATION', DOCUMENT_ROOT.'/system/modification/');
define('DIR_CATALOG', DOCUMENT_ROOT.'/catalog/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'riwigo');
define('DB_PORT', '3306');
define('DB_PREFIX', 'et_');
