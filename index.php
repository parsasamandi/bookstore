<?php

$frameworkPath='/Users/parsasamandi/Documents/prado-3.2.4.re2e58b8/framework/prado.php';
// $frameworkPath=getcwd().'../prado/framework/prado.php';

// The following directory checks may be removed if performance is required
$basePath=dirname(__FILE__);
$assetsPath=$basePath.'/assets';
$runtimePath=$basePath.'/protected/runtime';

if(!is_file($frameworkPath))
	die("Unable to find prado framework path $frameworkPath.");
if(!is_writable($assetsPath))
	die("Please make sure that the directory $assetsPath is writable by Web server process.");
if(!is_writable($runtimePath))
	die("Please make sure that the directory $runtimePath is writable by Web server process.");


require_once($frameworkPath);

$application=new TApplication;
$application->run();


// $frameworkPath='C:\wamp\www\prado-3.2.4.re2e58b8\framework\prado.php';
// if (php_uname('s') == 'Windows NT')
// 	$frameworkPath=getcwd().'\..\prado\framework\prado.php';
// else
// 	$frameworkPath=getcwd().'/../prado/framework/prado.php';
// The following directory checks may be removed if performance is required
// $basePath=dirname(__FILE__);
// $assetsPath=$basePath.'/assets';
// $runtimePath=$basePath.'/protected/runtime';

// if(!is_file($frameworkPath))
// 	die("Unable to find prado framework path $frameworkPath.");
// if(!is_writable($assetsPath))
// 	die("Please make sure that the directory $assetsPath is writable by Web server process.");
// if(!is_writable($runtimePath))
// 	die("Please make sure that the directory $runtimePath is writable by Web server process.");


// require_once($frameworkPath);

// $application=new TApplication;
// $application->run();
