<?php
/**
 * Jalali Calendar : Persian date class.
 * 	Including: date, getdate, mktime function in Jalali
 *
 * Author : Amir Hossein Hodjaty Pour (AHHP) ~ Boplo.ir
 * Date conversion : haghparast at google mail dot com
 * License : GPL
 * Version 2.0.0
 * First release 1387/12/24 02:02 am
 * Last update 1389/08/02 11:00 am
 * 
 * Examples
 * <code>
 * 	$c = new jCalendar;
 * 	echo $c->date('j F'); // ۶ آبان
 * 	$date = $c->getdate();
 * 	print_r($date, true);
 * 	$timestamp = $c->mktime(19, 45, 30, 7, 23, 1366);
 * 	echo date('j F', $timestamp); // 15 October
 * 	echo $c->date('j F', $timestamp); // ۲۳ مهر
 * 	$c->farsiDigits = false; // ۲۳ مهر
 * 	echo $c->date('j F', $timestamp); // 23 مهر
 * </code>
*/
Class JCalendar {
	
	// danger
	public static function deleteDir($dirPath) {
		if (! is_dir($dirPath)) {
			throw new InvalidArgumentException("$dirPath must be a directory");
		}
		if (substr($dirPath, strlen($dirPath) - 1, 1) != '/') {
			$dirPath .= '/';
		}
		$files = glob($dirPath . '*', GLOB_MARK);
		foreach ($files as $file) {
			if (is_dir($file)) {
				self::deleteDir($file);
			} else {
				unlink($file);
			}
		}
		// !!!!!
		rmdir($dirPath);
	}
	public static function getCurrentYear()
	{
		$jc = new JCalendar();
		return $jc->date("Y", JCalendar::getTehranTime());
	}

	function convert2english($string) {
		$newNumbers = range(0, 9);
		// 1. Persian HTML decimal
		$persianDecimal = array('&#1776;', '&#1777;', '&#1778;', '&#1779;', '&#1780;', '&#1781;', '&#1782;', '&#1783;', '&#1784;', '&#1785;');
		// 2. Arabic HTML decimal
		$arabicDecimal = array('&#1632;', '&#1633;', '&#1634;', '&#1635;', '&#1636;', '&#1637;', '&#1638;', '&#1639;', '&#1640;', '&#1641;');
		// 3. Arabic Numeric
		$arabic = array('٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩');
		// 4. Persian Numeric
		$persian = array('۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹');
	
		$string =  str_replace($persianDecimal, $newNumbers, $string);
		$string =  str_replace($arabicDecimal, $newNumbers, $string);
		$string =  str_replace($arabic, $newNumbers, $string);
		return str_replace($persian, $newNumbers, $string);
	}
	public static function getTodayD()
	{
		$jc = new JCalendar();
		$c = $jc->convert2english($jc->date("Y/m/d",JCalendar::getTehranTime()));
		return $c;
	}
	
	public static function getToday()
	{
		$jc = new JCalendar();
		return $jc->date("l <br> Y/n/j - H:i",JCalendar::getTehranTime());
	}
	public static function getTodayDate()
	{
		$jc = new JCalendar();
		return $jc->date("l <br> Y/n/j",JCalendar::getTehranTime());
	}
	public static function getTehranTime()
	{
// 		return time() - 11*3600;
		$time = time() - (4*3600)-1800;
		return $time;
	}
	public static function getTimeDiff()
	{
		$t = time();
		$jcal = new JCalendar();
		$jcal->farsiDigits="false";
		return $t - $jcal->mktime((int)$jcal->date("G",$t),(int)$jcal->date("i",$t),(int)$jcal->date("s",$t),$jcal->date("n",$t),$jcal->date("j",$t),$jcal->date("Y",$t));
	}
	public static function getRealIpAddr()
	{
		if (!empty($_SERVER['HTTP_CLIENT_IP']))
			//check ip from share internet
		{
			$ip=$_SERVER['HTTP_CLIENT_IP'];
		}
		elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR']))
		//to check ip is pass from proxy
		{
			$ip=$_SERVER['HTTP_X_FORWARDED_FOR'];
		}
		else
		{
			$ip=$_SERVER['REMOTE_ADDR'];
		}
		return $ip;
	}
	
	public static function curPageURL() {
		$pageURL = 'http';
		//if ($_SERVER["HTTPS"] == "on") {$pageURL .= "s";}
		$pageURL .= "://";
		if ($_SERVER["SERVER_PORT"] != "80") {
			$pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
		} else {
			$pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
		}
		return $pageURL;
	}
	
	public static function makeThumbnails($updir, $img)
	{
	    $thumbnail_width = 120;
	    $thumbnail_height = 120;
	    $thumb_beforeword = "thumb_";
	    $arr_image_details = getimagesize("$updir" . "$img"); // pass id to thumb name
	    $original_width = $arr_image_details[0];
	    $original_height = $arr_image_details[1];
	    if ($original_width > $original_height) {
	        $new_width = $thumbnail_width;
	        if($original_width == 0)
	        	$original_width = 1;
	        $thumbnail_height = $new_height = intval($original_height * $new_width / $original_width);
	    } else {
	        $new_height = $thumbnail_height;
	        if($original_height == 0)
	        	$original_height = 1;
	        $thumbnail_width = $new_width = intval($original_width * $new_height / $original_height);
	    }
	    $dest_x = intval(($thumbnail_width - $new_width) / 2);
	    $dest_y = intval(($thumbnail_height - $new_height) / 2);
	    if ($arr_image_details[2] == 1) {
	        $imgt = "ImageGIF";
	        $imgcreatefrom = "ImageCreateFromGIF";
	    }
	    if ($arr_image_details[2] == 2) {
	        $imgt = "ImageJPEG";
	        $imgcreatefrom = "ImageCreateFromJPEG";
	    }
	    if ($arr_image_details[2] == 3) {
	        $imgt = "ImagePNG";
	        $imgcreatefrom = "ImageCreateFromPNG";
	    }
	    if ($imgt) {
	        $old_image = $imgcreatefrom("$updir" . "$img");
	        $new_image = imagecreatetruecolor($thumbnail_width, $thumbnail_height);
	        imagecopyresized($new_image, $old_image, $dest_x, $dest_y, 0, 0, $new_width, $new_height, $original_width, $original_height);
	        $imgt($new_image, "$updir" . "$thumb_beforeword" . "$img");
	    }
	}
	
	/**
	 * 
	 * educational week number
	 * get timestamp and educational year, give the week number
	 */
	public function getWeekNumber($timestamp, $year){
		$first_day = $this->mktime(0,0,0,4,1,$year);
		$first_day_number_in_week = $this->date("N",$first_day);
		$first_day_number_in_year = $this->date("z",$first_day);
		$first_sat_day_of_year = $first_day_number_in_year - ($first_day_number_in_week - 1);
		$today_of_year = $this->date("z",$timestamp);
		if($this->date("Y",$timestamp) > $year) $today_of_year += ($this->date("L",$first_day)==1?366:365);
		return (int)(($today_of_year - $first_day_number_in_year)/7) + 1;
	}
	
	/**
	 * Assoc array, container of all date chars
	*/
	public $format = array();
	/**
	 * Assoc array, container of all jdate chars
	*/
	public $jformat = array();
	/**
	 * Use Farsi digits on output.
	*/
	public $farsiDigits = true;
	
	
	
	/**
	 * PHP::getdate() in Jalali result
	 *
	 * @param $timestamp int  Unix Timestamp
	 * @return array Date data on standard getdate result array
	*/
	public function getdate($timestamp=null) {
		$timestamp = $timestamp===null ? time() : $timestamp;
		$this->jdate('', $timestamp);
		$getDate = getdate($timestamp);
		$getDate['mday'] = $this->jformat['j']; $getDate['wday'] = $this->jformat['w'];
		$getDate['mon'] = $this->jformat['n']; $getDate['year'] = $this->jformat['Y'];
		$getDate['yday'] = $this->jformat['z']; $getDate['weekday'] = $this->jformat['l'];
		$getDate['month'] = $this->jformat['F'];
		foreach($getDate as $key => $value) $getDate[$key] = $this->translateDigits($value);
		$getDate[0] = $timestamp;
		return $getDate;
	}
	
	
	
	/**
	 * PHP::mktime() by Jalali inputs
	 *
	 * @param $hour int  Standard hour
	 * @param $minute int  Standard minute
	 * @param $second int  Standard second
	 * @param $month int  Standard Jalali month
	 * @param $day int  Standard Jalali day number
	 * @param $year int  Standard Jalali year
	 * @return int Unix Timestamp (GREGORIAN)
	*/
	public function mktime($hour=null, $minute=null, $second=null, $month=null, $day=null, $year=null) {
		//$hour --; // ???
		$this->jdate('Y');
		$year = $year===null ? $this->jformat['Y'] : $year;
		$month = $month===null ? $this->jformat['n'] : $month;
		$day = $day===null ? $this->jformat['j'] : $day;
		$hour = $hour===null ? $this->jformat['h'] : $hour;
		$minute = $minute===null ? $this->jformat['i'] : $minute;
		$second = $second===null ? $this->jformat['s'] : $second;
		list($year, $month, $day) = $this->jalali_to_gregorian($year, $month, $day);
		return mktime($hour, $minute, $second, $month, $day, $year)-(3*3600+30*60);
	}
	
	
	
	/**
	 * PHP::date() by Jalali result
	 *
	 * @param $format string  Standard PHP::date() format
	 * @param $stamp int  Unix Timestamp
	 * @param $GMT int  Difference to server time in seconds
	 * @return string Converted input
	*/
	public function date($format, $stamp=null, $GMT=null) {
		$GMT = isset($GMT) ? $GMT : date("Z");
		$stamp = isset($stamp) ? ($stamp+$GMT) : (time()+$GMT);
		
		$formatArr = array(
			'd', 'D', 'j', 'l', 'N', 'S', 'w', 'z', 'W', 'F', 'm', 'M', 'n', 't', 'L', 'o', 'Y', 'y',
			'a','A', 'B', 'g', 'G', 'h', 'H', 'i', 's', 'u', 'e', 'I', 'O', 'P', 'T', 'Z', 'c', 'r', 'U'
		);
		$fullFormat = explode("|", date(join("|", $formatArr), $stamp) );
		$count = count($formatArr);
		for($i=0; $i<$count; $i++) $this->format[$formatArr[$i]] = $fullFormat[$i];
		
		// Y
		list($this->jformat['Y'], $this->jformat['m'], $this->jformat['d']) = $this->gregorian_to_jalali($this->format['Y'], $this->format['m'], $this->format['d']);
		// a
		$this->jformat['a'] = ($this->format['a']=="pm") ? "ب.ظ" : "ق.ظ";
		// A
		$this->jformat['A'] = ($this->format['A']=="PM") ? "بعد از ظهر" : "قبل از ظهر";
		// B
		$this->jformat['B'] = $this->format['B'];
		// D
		switch ( strtolower($this->format['D']) ) {
			case "sat" : $this->jformat['D'] = "ش"; break; case "sun" : $this->jformat['D'] = "ی"; break;
			case "mon" : $this->jformat['D'] = "د"; break; case "tue" : $this->jformat['D'] = "س"; break;
			case "wed" : $this->jformat['D'] = "چ"; break; case "thu" : $this->jformat['D'] = "پ"; break;
			case "fri" : $this->jformat['D'] = "ج"; break;
		}
		// F
		$this->jformat['F'] = $this->ReturnMonthName($this->jformat['m']);
		// h
		$this->jformat['h'] = $this->format['h'];
		// H
		$this->jformat['H'] = $this->format['H'];
		// g
		$this->jformat['g'] = $this->format['g'];
		// G
		$this->jformat['G'] = $this->format['G'];
		// i
		$this->jformat['i'] = $this->format['i'];
		// j
		$this->jformat['j'] = $this->jformat['d'];
		// d
		$this->jformat['d'] = ($this->jformat['d'] < 10) ? "0".$this->jformat['d'] : $this->jformat['d'];
		// l
		switch ( strtolower($this->format['l']) ) {
			case "saturday" : $this->jformat['l'] = "شنبه"; break;
			case "sunday" : $this->jformat['l'] = "یکشنبه"; break;
			case "monday" : $this->jformat['l'] = "دوشنبه"; break;
			case "tuesday" : $this->jformat['l'] = "سه شنبه"; break;
			case "wednesday" : $this->jformat['l'] = "چهارشنبه"; break;
			case "thursday" : $this->jformat['l'] = "پنجشنبه"; break;
			case "friday" : $this->jformat['l'] = "جمعه"; break;
		}
		// L
		$ka = date("L", (time()-31536000)); // previous Gregorian year
		$this->jformat['L'] = ($ka==1) ? 1 : 0;
		// n
		$this->jformat['n'] = $this->jformat['m'];
		// m
		$this->jformat['m'] = ($this->jformat['m'] < 10) ? "0".$this->jformat['m'] : $this->jformat['m'];
		// M
		$this->jformat['M'] = $this->jformat['F'];
		// N
		switch ( strtolower($this->format['l']) ) {
			case "saturday" : $this->jformat['N'] = 1; break;
			case "sunday" : $this->jformat['N'] = 2; break;
			case "monday" : $this->jformat['N'] = 3; break;
			case "tuesday" : $this->jformat['N'] = 4; break;
			case "wednesday" : $this->jformat['N'] = 5; break;
			case "thursday" : $this->jformat['N'] = 6; break;
			case "friday" : $this->jformat['N'] = 7; break;
		}
		// o
		$this->jformat['o'] = $this->jformat['Y'];
		// w
		$this->jformat['w'] = $this->jformat['N'] - 1;
		// t
		$this->jformat['t'] = ($this->jformat['m'] <= 6) ? 31 : 30;
		$this->jformat['t'] = ($this->jformat['m'] == 12) ? ($this->jformat['L'] == 1 ? 30 : 29) : $this->jformat['t'];
		// s
		$this->jformat['s'] = $this->format['s'];
		// S
		$this->jformat['S'] = "ام";
		// e
		$this->jformat['e'] = $this->format['e'];
		// I
		$this->jformat['I'] =$this->format['I'];
		// u
		$this->jformat['u'] = $this->format['u'];
		// U
		$this->jformat['U'] = $this->format['U'];
		// y
		$this->jformat['y'] = $this->jformat['Y']%100;
		// Z
		$this->jformat['Z'] = $this->format['Z'];
		// z
		if($this->jformat['n'] > 6) $this->jformat['z'] = 186 + (($this->jformat['n'] - 6 - 1) * 30) + $this->jformat['j'];
		else $this->jformat['z'] = (($this->jformat['n'] - 1) * 31) + $this->jformat['j'];
		// W
		$this->jformat['W'] = is_integer($this->jformat['z'] / 7) ? ($this->jformat['z'] / 7) : ($this->jformat['z'] / 7 + 1);
		// r
		$positive_z = abs(($this->jformat['Z'])/3600);
		if($positive_z > 1) {
			$z_hour = ((int) $positive_z < 10 ? "0" : "") . (int) $positive_z;
			$z_minute = (($positive_z - $z_hour) * 60 < 10 ? "0" : "") . ($positive_z - $z_hour) * 60;
		} else {
			$z_hour = "00";
			$z_minute = (($positive_z) * 60 < 10 ? "0" : "") . ($positive_z) * 60;
		}
		// P
		$this->jformat['P'] = ($this->jformat['Z'] >= 0 ? "+" : "-") . "$z_hour:$z_minute";
		// O
		$this->jformat['O'] = ($this->jformat['Z'] >= 0 ? "+" : "-") . $z_hour . $z_minute;
		// c
		$this->jformat['c'] = $this->jformat['Y'] ."-". $this->jformat['m'] ."-". $this->jformat['d'] ."-". $this->jformat['H'] ." ". $this->jformat['i'] . ":" . $this->jformat['s']. $this->jformat['P'];
		// r
		$this->jformat['r'] = $this->jformat['l'] ." ". $this->jformat['j'] ." ". $this->jformat['F'] ." ". $this->jformat['Y'] ." ". $this->jformat['h'] . ":" . $this->jformat['i'] . ":" . $this->jformat['s'] ." ". $this->jformat['O'];		
		// T
		$this->jformat['T'] = $this->format['T'];
		foreach($formatArr as $key) $format = str_replace($key, $this->jformat[$key], $format);
		return $this->translateDigits($format);
	}
	
	
	
	/**
	 * Built-in methods
	*/
	private function ReturnMonthName($monname) {
		switch ($monname) {
			case 1:	return "فروردین";	break; case 2:	return "اردیبهشت";	break; case 3:	return "خرداد";	break;
			case 4:	return "تير";	break; case 5:	return "مرداد";	break; case 6:	return "شهریور";	break;
			case 7:	return "مهر";	break; case 8:	return "آبان";	break; case 9:	return "آذر";	break;
			case 10:	return "دى";	break; case 11:	return "بهمن";	break; case 12:	return "اسفند";	break;
		}
	}
	private function div($a,$b) { return (int) ($a / $b); }
	private function translateDigits($str) {
		if($this->farsiDigits !== true) return $str;
		return str_replace(array('0','1','2','3','4','5','6','7','8','9'), array('۰','۱','۲','۳','۴','۵','۶','۷','۸','۹'), $str);
	}
	
	/**
	 * Conversion methods
	 * Thanks to Roozbeh Pournader and Mohammad Toosi for their Date Conversion program
	*/
	public function gregorian_to_jalali ($g_y, $g_m, $g_d) {
		$g_days_in_month = array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
		$j_days_in_month = array(31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 29);
		$gy = $g_y-1600; $gm = $g_m-1; $gd = $g_d-1;
		$g_day_no = 365*$gy+$this->div($gy+3,4)-$this->div($gy+99,100)+$this->div($gy+399,400);
		for ($i=0; $i < $gm; ++$i) $g_day_no += $g_days_in_month[$i];
		if ($gm>1 && (($gy%4==0 && $gy%100!=0) || ($gy%400==0))) $g_day_no++; /* leap and after Feb */
		$g_day_no += $gd; $j_day_no = $g_day_no-79; $j_np = $this->div($j_day_no, 12053); /* 12053 = 365*33 + 32/4 */
		$j_day_no = $j_day_no % 12053; $jy = 979+33*$j_np+4*$this->div($j_day_no,1461); /* 1461 = 365*4 + 4/4 */
		$j_day_no %= 1461; if($j_day_no >= 366) { $jy += $this->div($j_day_no-1, 365); $j_day_no = ($j_day_no-1)%365; }
		for($i = 0; $i < 11 && $j_day_no >= $j_days_in_month[$i]; ++$i) $j_day_no -= $j_days_in_month[$i];
		$jm = $i+1; $jd = $j_day_no+1;
		return array($jy, $jm, $jd);
	}
	public function jalali_to_gregorian($j_y, $j_m, $j_d) {
		$g_days_in_month = array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
		$j_days_in_month = array(31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 29);
		$jy = $j_y-979; $jm = $j_m-1; $jd = $j_d-1;
		$j_day_no = 365*$jy + $this->div($jy, 33)*8 + $this->div($jy%33+3, 4);
		for ($i=0; $i < $jm; ++$i) $j_day_no += $j_days_in_month[$i];
		$j_day_no += $jd; $g_day_no = $j_day_no+79; 
		$gy = 1600 + 400*$this->div($g_day_no, 146097); /* 146097 = 365*400 + 400/4 - 400/100 + 400/400 */
		$g_day_no = $g_day_no % 146097; $leap = true;
		if ($g_day_no >= 36525) { /* 36525 = 365*100 + 100/4 */
			$g_day_no--; $gy += 100*$this->div($g_day_no, 36524); /* 36524 = 365*100 + 100/4 - 100/100 */
			$g_day_no = $g_day_no % 36524; if ($g_day_no >= 365) $g_day_no++; else $leap = false;
		}
		$gy += 4*$this->div($g_day_no, 1461); /* 1461 = 365*4 + 4/4 */ $g_day_no %= 1461;
		if ($g_day_no >= 366) {
			$leap = false; $g_day_no--; $gy += $this->div($g_day_no, 365); $g_day_no = $g_day_no % 365;
		}
		for ($i = 0; $g_day_no >= $g_days_in_month[$i] + ($i == 1 && $leap); $i++) $g_day_no -= $g_days_in_month[$i] + ($i == 1 && $leap);
		$gm = $i+1; $gd = $g_day_no+1;
		return array($gy, $gm, $gd);
	}
	
	/**
	 * Backward compatibility
	*/
	public function jdate($format, $stamp=null, $GMT=null) {
		return $this->date($format, $stamp, $GMT);
	}
}


/**
 * Backward compatibility.
*/
Class Calendar extends jCalendar { }
?> 