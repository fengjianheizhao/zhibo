<?php

defined('IN_SYSTEM') or exit('Access Denied');

function saddslashes($string) {
	if (is_array($string)) {
		foreach ($string as $key => $val) {
			$string[$key] = saddslashes($val);
		}
	} else {
		$string = addslashes($string);
	}
	return $string;
}

//获取内容中的图片并返回
function getImgInfo($content) {
	$pattern = "/<[img|IMG].*?src=[\'|\"].*?[\'|\"].*?[\/]?>/"; //匹配图片出来
	preg_match_all($pattern, $content, $match);
	$data = array();
	$i = 0;
	$needs = array('src', 'width', 'height', 'alt', 'title');
	if ($match && is_array($match[0])) {
		foreach ($match[0] as $val) {
			$data[$i]['img'] = $val;
			foreach ($needs as $need) {
				preg_match('|<img\s+.*?' . $need . '\s*=\s*[\'"]([^\'"]+).*?>|i', $val, $arr);
				$data[$i][$need] = $arr[1];
			}
			$i++;
		}
	}
	return $data;
}

function getImage($path, $imgurl) {
	$imgname = basename($imgurl);
	$imgnamearr = explode(".", $imgname);
	$fname = time() . random_str(6) . "." . $imgnamearr[count($imgnamearr) - 1];
	$fwpath = S_ROOT . $path;
	create_folders($fwpath);
	ini_set('user_agent', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; 4399Box.560; .NET4.0C; .NET4.0E)');
	file_put_contents($fwpath . $fname, file_get_contents($imgurl));
	return $path . $fname;
}

//获取客户端ip
function getip() {
	if (getenv('HTTP_CLIENT_IP') && strcasecmp(getenv('HTTP_CLIENT_IP'), 'unknown')) {
		$ip = getenv('HTTP_CLIENT_IP');
	} elseif (getenv('HTTP_X_FORWARDED_FOR') && strcasecmp(getenv('HTTP_X_FORWARDED_FOR'), 'unknown')) {
		$ip = getenv('HTTP_X_FORWARDED_FOR');
	} elseif (getenv('REMOTE_ADDR') && strcasecmp(getenv('REMOTE_ADDR'), 'unknown')) {
		$ip = getenv('REMOTE_ADDR');
	} elseif (isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], 'unknown')) {
		$ip = $_SERVER['REMOTE_ADDR'];
	}
	preg_match("/[\d\.]{7,15}/", $ip, $onlineipmatches);
	$ip = empty($onlineipmatches[0]) ? 'unknown' : $onlineipmatches[0];
	return $ip;
}

function utf8_substr($str, $start, $length = null) {
	$str = trim($str);
	$strlen = strlen($str);
	$length = $strlen < $length ? $strlen : $length;
	$res = substr($str, $start, $length);

	if ($start >= 0) {
		$next_start = $start + $length; // 初始位置
		$next_len = $next_start + 6 <= $strlen ? 6 : $strlen - $next_start;
		$next_segm = substr($str, $next_start, $next_len);
		$prev_start = $start - 6 > 0 ? $start - 6 : 0;
		$prev_segm = substr($str, $prev_start, $start - $prev_start);
	} else {
		$next_start = $strlen + $start + $length; // 初始位置
		$next_len = $next_start + 6 <= $strlen ? 6 : $strlen - $next_start;
		$next_segm = substr($str, $next_start, $next_len);
		$start = $strlen + $start;
		$prev_start = $start - 6 > 0 ? $start - 6 : 0;
		$prev_segm = substr($str, $prev_start, $start - $prev_start);
	}
	if (preg_match('@^([\x80-\xBF]{0,5})[\xC0-\xFD]?@', $next_segm, $bytes)) {
		if (!empty($bytes[1])) {
			$bytes = $bytes[1];
			$res .= $bytes;
		}
	}
	$ord0 = ord($res[0]);
	if (128 <= $ord0 && 191 >= $ord0) {
		if (preg_match('@[\xC0-\xFD][\x80-\xBF]{0,5}$@', $prev_segm, $bytes)) {
			if (!empty($bytes[0])) {
				$bytes = $bytes[0];
				$res = $bytes . $res;
			}
		}
	}
	return trim($res);
}

/* * ******************************************
 *
 * 函数名：replaceHtmlAndJs($document)
 * 作  用：去除字符串中的html代码
 * 作  者：来自网络...
 * 日  期：2011-11-08	刘先忠修订
 *
 * ****************************************** */

function replaceHtmlAndJs($document) {
	$document = trim($document);
	if (strlen($document) <= 0) {
		return $document;
	}
	$search = array("'<script[^>]*?>.*?</script>'si", // 去掉 javascript
		"'<[\/\!]*?[^<>]*?>'si", // 去掉 HTML 标记
		"'([\r\n])[\s]+'", // 去掉空白字符
		"'&(quot|#34);'i", // 替换 HTML 实体
		"'&(amp|#38);'i", "'&(lt|#60);'i", "'&(gt|#62);'i", "'&(nbsp|#160);'i"); // 作为 PHP 代码运行
	$replace = array("", "", "\\1", "\"", "&", "<", ">", " ");
	return @trim(@trim(preg_replace($search, $replace, $document)), chr(227) . chr(128));
}

/* * ******************************************
 *
 * 函数名：csubstr($str, $length, $suffix = true, $start = 0, $charset = "utf-8") 
 * 作  用：计算，截取中文字符串
 * 作  者：来自网络...
 * 日  期：2011-11-08	修订
 * 简  介：function csubstr($str, $start=0, $length, $charset="utf-8", $suffix=true)  
 * $str >>要截取的字符串  $length >>截取长度 $suffix >>是否输出”...“  $start >>开始位置    $charset >>字符串编码   
 *
 * ****************************************** */

function csubstr($str, $length, $suffix = true, $start = 0, $charset = "utf-8") {
	if (function_exists("mb_substr")) {
		if (mb_strlen($str, $charset) <= $length)
			return $str;
		$slice = mb_substr($str, $start, $length, $charset);
	} else {
		$re ['utf-8'] = "/[\x01-\x7f]|[\xc2-\xdf][\x80-\xbf]|[\xe0-\xef][\x80-\xbf]{2}|[\xf0-\xff][\x80-\xbf]{3}/";
		$re ['gb2312'] = "/[\x01-\x7f]|[\xb0-\xf7][\xa0-\xfe]/";
		$re ['gbk'] = "/[\x01-\x7f]|[\x81-\xfe][\x40-\xfe]/";
		$re ['big5'] = "/[\x01-\x7f]|[\x81-\xfe]([\x40-\x7e]|\xa1-\xfe])/";
		preg_match_all($re [$charset], $str, $match);
		if (count($match [0]) <= $length)
			return $str;
		$slice = join("", array_slice($match [0], $start, $length));
	}
	if ($suffix)
		return $slice . "…";
	return $slice;
}

/* 生成数随机字符串 */

function random_str($len = 6, $type = 1) {
	if ($type == 1) {
		$str = "0123456789"; //随机生成一个数的字符串
	} elseif ($type == 2) {
		$str = "0123456789qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM"; //随机生成一个数的字符串
	}
	$code = "";
	for ($i = 0; $i < $len; $i++) {
		$code .= $str[mt_rand(0, strlen($str) - 1)];
	}
	return $code;
}

/* 判断邮箱格式 */

function is_email($str) {
	return (preg_match("/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/", $str));
}

/* 判断手机格式 */

function is_mobile($str) {
	return preg_match("/^0?1[3|4|5|8|7][0-9]\d{8}$/", $str);
}

function is_account($str) {
	if (preg_match("/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/", $str))
		return true;
	elseif (preg_match("/^(1[7358]\d|147)\d{8}$/", $str))
		return true;
	else
		return false;
}

/* 身份证号 全 */

function checkIdCard($idcard) {
	if (empty($idcard)) {
		return false;
	}
	$City = array(11 => "北京", 12 => "天津", 13 => "河北", 14 => "山西", 15 => "内蒙古", 21 => "辽宁", 22 => "吉林", 23 => "黑龙江", 31 => "上海", 32 => "江苏", 33 => "浙江", 34 => "安徽", 35 => "福建", 36 => "江西", 37 => "山东", 41 => "河南", 42 => "湖北", 43 => "湖南", 44 => "广东", 45 => "广西", 46 => "海南", 50 => "重庆", 51 => "四川", 52 => "贵州", 53 => "云南", 54 => "西藏", 61 => "陕西", 62 => "甘肃", 63 => "青海", 64 => "宁夏", 65 => "新疆", 71 => "台湾", 81 => "香港", 82 => "澳门", 91 => "国外");
	$iSum = 0;
	$idCardLength = strlen($idcard);
	//长度验证
	if (!preg_match('/^([0-9]{17}[0-9X]{1})|([0-9]{15})|([0-9]{18})$/i', $idcard)) {
		return false;
	}
	//地区验证
	if (!array_key_exists(intval(substr($idcard, 0, 2)), $City)) {
		//return false;
		return false;
	}
	// 15位身份证验证生日，转换为18位
	if ($idCardLength == 15) {
		$sBirthday = '19' . substr($idcard, 6, 2) . '-' . substr($idcard, 8, 2) . '-' . substr($idcard, 10, 2);
		$d = new DateTime($sBirthday);
		$dd = $d->format('Y-m-d');
		if ($sBirthday != $dd) {
			return false;
		}
		$idcard = substr($idcard, 0, 6) . "19" . substr($idcard, 6, 9); //15to18
		$Bit18 = getVerifyBit($idcard); //算出第18位校验码
		$idcard = $idcard . $Bit18;
	}
	// 判断是否大于2078年，小于1900年
	$year = substr($idcard, 6, 4);
	if ($year < 1900 || $year > 2078) {
		return false;
	}
	//18位身份证处理
	$sBirthday = substr($idcard, 6, 4) . '-' . substr($idcard, 10, 2) . '-' . substr($idcard, 12, 2);
	$d = new DateTime($sBirthday);
	$dd = $d->format('Y-m-d');
	if ($sBirthday != $dd) {
		return false;
	}
	//身份证编码规范验证
	$idcard_base = substr($idcard, 0, 17);
	if (strtoupper(substr($idcard, 17, 1)) != getVerifyBit($idcard_base)) {
		//return false;
		return false;
	}
	return true;
}

// 计算身份证校验码，根据国家标准GB 11643-1999
function getVerifyBit($idcard_base) {
	if (strlen($idcard_base) != 17) {
		return false;
	}
	//加权因子
	$factor = array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);
	//校验码对应值
	$verify_number_list = array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');
	$checksum = 0;
	for ($i = 0; $i < strlen($idcard_base); $i++) {
		$checksum += substr($idcard_base, $i, 1) * $factor[$i];
	}
	$mod = $checksum % 11;
	$verify_number = $verify_number_list[$mod];
	return $verify_number;
}

/* 计算时间差 */

function timediff($begin_time, $end_time) {
	if ($begin_time < $end_time) {
		$starttime = $begin_time;
		$endtime = $end_time;
	} else {
		$starttime = $end_time;
		$endtime = $begin_time;
	}
	$timediff = $endtime - $starttime;
	$days = intval($timediff / 86400);
	$remain = $timediff % 86400;
	$hours = intval($remain / 3600);
	$remain = $remain % 3600;
	$mins = intval($remain / 60);
	$secs = $remain % 60;
	$res = array("day" => $days, "hour" => $hours, "min" => $mins, "sec" => $secs);
	return $res;
}

//======== 实例使用 ======== 
//$timediff = timediff( strtotime( "2011-10-28" ), strtotime( "2011-10-29" ) ); 
//print_r( $timediff ); 

function qhistory($id) {
	$qhistory = empty($_COOKIE['qhistory']) ? "" : json_decode($_COOKIE['qhistory'], true);
	if (is_array($qhistory) && $qhistory) {
		array_unshift($qhistory, $id); //数组开头插入元素
		$qhistory = array_unique($qhistory); //去除重复元素（去除重复元素时保留第一个元素）
		$num = count($qhistory);
		if ($num >= HISTORYNUM)
			$qhistory = array_slice($qhistory, 0, HISTORYNUM - 1, true); //截取前HISTORYNUM个元素存入cookie
	} else
		$qhistory[] = $id;
	setcookie("qhistory", json_encode($qhistory), time() + DEFAULTCOOKIETIMEOUT, "/");
}

function br2nl($text) {
	return preg_replace('/<br\\s*?\/??>/i', '', $text);
}

//判断是否是由数字组成的字符串
function is_num($str) {
	if (preg_match("/^[0-9]*$/", $str)) {
		return true;
	} else {
		return false;
	}
}

//判断是否为数字和字母
function isLetterAndNum($str) {
	if (preg_match("/^[A-Za-z0-9]*$/", $str)) {
		return true;
	}
	return false;
}

if (!function_exists('go_back')) {

	function go_back($suffix = NULL, $default = NULL) {
		//获取来源
		$referer = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : '';

		//判断来源
		if (!empty($referer)) {
			// 来自Typecho
			if (!empty($suffix)) {
				$parts = parse_url($referer);
				$myParts = parse_url($suffix);

				if (isset($myParts['fragment'])) {
					$parts['fragment'] = $myParts['fragment'];
				}

				if (isset($myParts['query'])) {
					$args = array();
					if (isset($parts['query'])) {
						parse_str($parts['query'], $args);
					}

					parse_str($myParts['query'], $currentArgs);
					$args = array_merge($args, $currentArgs);
					$parts['query'] = http_build_query($args);
				}

				$referer = build_url($parts);
			}

			redirect($referer);
		} else if (!empty($default)) {
			redirect($default);
		}
	}

}

function get_utf8_to_gb($value) {
	$value_1 = $value;
	$value_2 = @iconv("utf-8", "gb2312//IGNORE", $value_1);
	$value_3 = @iconv("gb2312", "utf-8//IGNORE", $value_2);

	if (strlen($value_1) == strlen($value_3)) {
		return $value_2;
	} else {
		return $value_1;
	}
}

function get_gb_to_utf8($value) {
	$value_1 = $value;
	$value_2 = @iconv("gb2312", "utf-8//IGNORE", $value_1);
	$value_3 = @iconv("utf-8", "gb2312//IGNORE", $value_2);
	if (strlen($value_1) == strlen($value_3)) {
		return $value_2;
	} else {
		return $value_1;
	}
}

function arr_gb_to_utf8($arr) {

	foreach ($arr as $k => $v) {
		if (is_array($v)) {
			$arr2[$k] = arr_gb_to_utf8($v);
		} else {
			$arr2[$k] = get_gb_to_utf8($v);
		}
	}
	return $arr2;
}

function writeLog($msg, $filepre) {
	$logFile = S_ROOT . "syslog/" . $filepre . "-" . date('Y-m-d') . '.php';
	if (create_folders(S_ROOT . "systemlog/")) {
		$msg = "<?php\r\n/*\r\n" . date('Y-m-d H:i:s') . "  >>>  " . $msg . " \r\n*/\r\n?>\r\n";
		if (file_put_contents($logFile, $msg, FILE_APPEND))
			return true;
		return false;
	} else
		return false;
}

function create_folders($dir) {
	return is_dir($dir) or ( create_folders(dirname($dir)) and mkdir($dir, 0777));
}

//将object类型转换成数组array类型
function obj2arr($obj) {
	if (is_object($obj)) {
		$arr = get_object_vars($obj);
		foreach ($arr as $k => $v) {
			if (is_object($v) || is_array($v)) {
				$res[$k] = obj2arr($v);
			} else {
				$res[$k] = $v;
			}
		}
	} elseif (is_array($obj)) {
		foreach ($obj as $k => $v) {
			if (is_object($v) || is_array($v)) {
				$res[$k] = obj2arr($v);
			} else {
				$res[$k] = $v;
			}
		}
	} else {
		$res = $obj;
	}
	return $res;
}

function getParameter($string) {
	$arr = explode("&", $string);
	foreach ($arr as $val) {
		$len = strlen($val);
		$pos = strpos($val, "=");
		$k = substr($val, 0, $pos);
		$v = substr($val, $pos + 1, $len);
		$pararr[$k] = $v;
	}
	return $pararr;
}

function initSellercatsList($arr) {
	if (!empty($arr['seller_cats']['seller_cat'])) {
		foreach ($arr['seller_cats']['seller_cat'] as $val) {
			$catelist[$val['parent_cid']][] = $val;
		}
		return $catelist;
	} else {
		return array();
	}
}

function isexists($key, $array) {
	$status = false;
	$array = @array_flip($array);
	if (@array_key_exists($key, $array)) {
		$status = true;
	}
	return $status;
}

function get_nums($str) {
	$reg = '/\d{1,}/'; //正则表达式
	preg_match_all($reg, $str, $tmp); //匹配
	return $tmp[0][0];
}

/* 计算中英文字符串长度 */

function getstrlen($str, $charset = 'utf-8') {
	if ($charset == 'utf-8') {
		return (strlen($str) + mb_strlen($str, 'UTF8')) / 2;
	} else {
		return strlen($str);
	}
}

function ccStrLen($str) { #计算中英文混合字符串的长度
	$ccLen = 0;
	$ascLen = strlen($str);
	$ind = 0;
	$hasCC = preg_match("/[xA1-xFE]/", $str); #判断是否有汉字
	$hasAsc = preg_match("/[x01-xA0]/", $str); #判断是否有ASCII字符
	if ($hasCC && !$hasAsc) #只有汉字的情况
		return strlen($str) / 2;
	if (!$hasCC && $hasAsc) #只有Ascii字符的情况
		return strlen($str);
	for ($ind = 0; $ind < $ascLen; $ind++) {
		if (ord(substr($str, $ind, 1)) > 0xa0) {
			$ccLen++;
			$ind++;
		} else {
			$ccLen++;
		}
	}
	return $ccLen;
}

function ccStrLeft($str, $len) { #从左边截取中英文混合字符串
	$ascLen = strlen($str);
	if ($ascLen <= $len)
		return $str;
	$hasCC = preg_match("/[xA1-xFE]/", $str); #同上
	$hasAsc = preg_match("/[x01-xA0]/", $str);
	if (!$hasCC)
		return substr($str, 0, $len);
	if (!$hasAsc)
		if ($len & 0x01) #如果长度是奇数
			return substr($str, 0, $len + $len - 2);
		else
			return substr($str, 0, $len + $len);
	$cind = 0;
	$flag = 0;
	$reallen = 0; //实际取字节长
	while ($cind < $ascLen && $reallen < $len) {
		if (ord(substr($str, $cind, 1)) < 0xA1) { //如果该字节为英文 则加一
			$cind++;
		} else {//否则 加2个字节
			$cind += 2;
		}
		$reallen++;
	}
	return substr($str, 0, $cind);
}

function splitContent($content, $smslen) {
	$str_tmp = $content;
	$arr_cont = array();
	$len_tmp = 0;
	$i = 0; //分割绝对位置
	while (strlen($str_tmp) > 0) {
		$str_tmp = ccStrLeft($str_tmp, $smslen);
		array_push($arr_cont, $str_tmp);
		$i += strlen($str_tmp);
		$str_tmp = substr($content, $i, strlen($content));
	}
	return $arr_cont;
}

function datediff($startdate, $deff) {
	return date("Ymd", strtotime($startdate) - $deff * 24 * 3600);
}

//清除bom
function clearBOM($contents) {
	$charset[1] = substr($contents, 0, 1);
	$charset[2] = substr($contents, 1, 1);
	$charset[3] = substr($contents, 2, 1);
	if (ord($charset[1]) == 239 && ord($charset[2]) == 187 && ord($charset[3]) == 191) {
		$contents = substr($contents, 3);
	}
	return $contents;
}

function hidtel($phone) {
	$IsWhat = preg_match('/(0[0-9]{2,3}[\-]?[2-9][0-9]{6,7}[\-]?[0-9]?)/i', $phone); //固定电话
	if ($IsWhat == 1) {
		return preg_replace('/(0[0-9]{2,3}[\-]?[2-9])[0-9]{3,4}([0-9]{3}[\-]?[0-9]?)/i', '$1****$2', $phone);
	} else {
		return preg_replace('/(1[34578]{1}[0-9])[0-9]{4}([0-9]{4})/i', '$1****$2', $phone);
	}
}

//递归删除文件夹下内容 $isDelFolder  false 不删除文件夹  true 删除文件夹
function delDirAll($delDir, $isStayFolder = true) {
	if (is_dir($delDir)) {
		if ($df = opendir($delDir)) {
			while ($file = readdir($df)) {
				if ($file != "." && $file != "..") {
					$fullpath = $delDir . "/" . $file;
					if (is_dir($fullpath)) {
						delDirAll($fullpath);
					} else {
						unlink($fullpath);
					}
				}
			}
			closedir($df);
		}
		$isStayFolder or rmdir($delDir);
	}
}

function delDir($dir) {
	if (rmdir($dir)) {
		return true;
	} else {
		return false;
	}
}

function encrypt($str) {
	$code = "7ZP4h1Vtrd";
	return md5($code . $str);
}

function mobile_asterisk($mobile) {
	$mobile_asterisk = substr($mobile, 0, 4) . "****" . substr($mobile, 8, 3);
	return $mobile_asterisk;
}

function imageCreateFromBMP($filePath) {
	$fileHandle = fopen($filePath, 'rb');
	if (empty($fileHandle)) {
		return false;
	}

	$file = unpack(
		'vfile_type/Vfile_size/Vreserved/Vbitmap_offset', fread($fileHandle, 14)
	);

	if ($file['file_type'] != 19778) {
		return false;
	}

	$bmp = unpack(
		'Vheader_size/Vwidth/Vheight/vplanes/' .
		'vbits_per_pixel/Vcompression/Vsize_bitmap/' .
		'Vhoriz_resolution/Vvert_resolution/Vcolors_used/Vcolors_important', fread($fileHandle, 40)
	);
	$bmp['colors'] = pow(2, $bmp['bits_per_pixel']);
	if ($bmp['size_bitmap'] == 0) {
		$bmp['size_bitmap'] = $file['file_size'] - $file['bitmap_offset'];
	}
	$bmp['bytes_per_pixel'] = $bmp['bits_per_pixel'] / 8;
	$bmp['bytes_per_pixel2'] = ceil($bmp['bytes_per_pixel']);
	$bmp['decal'] = $bmp['width'] * $bmp['bytes_per_pixel'] / 4;
	$bmp['decal'] -= floor($bmp['width'] * $bmp['bytes_per_pixel'] / 4);
	$bmp['decal'] = 4 - (4 * $bmp['decal']);
	if ($bmp['decal'] == 4) {
		$bmp['decal'] = 0;
	}

	$palette = array();
	if ($bmp['colors'] < 16777216) {
		$palette = unpack(
			'V' . $bmp['colors'], fread($fileHandle, $bmp['colors'] * 4)
		);
	}
	$image = fread($fileHandle, $bmp['size_bitmap']);
	$vide = chr(0);
	$res = imagecreatetruecolor($bmp['width'], $bmp['height']);
	$p = 0;

	$y = $bmp['height'] - 1;
	while ($y >= 0) {
		$x = 0;
		while ($x < $bmp['width']) {
			if ($bmp['bits_per_pixel'] == 24) {
				$color = unpack('V', substr($image, $p, 3) . $vide);
			} else if ($bmp['bits_per_pixel'] == 16) {
				$color = unpack('n', substr($image, $p, 2));
				$color[1] = $palette[$color[1] + 1];
			} else if ($bmp['bits_per_pixel'] == 8) {
				$color = unpack('n', $vide . substr($image, $p, 1));
				$color[1] = $palette[$color[1] + 1];
			} else if ($bmp['bits_per_pixel'] == 4) {
				$color = unpack('n', $vide . substr($image, floor($p), 1));
				if (($p * 2) % 2 == 0) {
					$color[1] = ($color[1] >> 4);
				} else {
					$color[1] = ($color[1] & 0x0F);
				}
				$color[1] = $palette[$color[1] + 1];
			} else if ($bmp['bits_per_pixel'] == 1) {
				$color = unpack('n', $vide . substr($image, floor($p), 1));
				switch (($p * 8) % 8) {
					case 0:
						$color[1] = ($color[1] >> 7);
						break;
					case 1:
						$color[1] = ($color[1] & 0x40) >> 6;
						break;
					case 2:
						$color[1] = ($color[1] & 0x20) >> 5;
						break;
					case 3:
						$color[1] = ($color[1] & 0x10) >> 4;
						break;
					case 4:
						$color[1] = ($color[1] & 0x8) >> 3;
						break;
					case 5:
						$color[1] = ($color[1] & 0x4) >> 2;
						break;
					case 6:
						$color[1] = ($color[1] & 0x2) >> 1;
						break;
					case 7:
						$color[1] = ($color[1] & 0x1);
						break;
				}
				$color[1] = $palette[$color[1] + 1];
			} else {
				return false;
			}
			imagesetpixel($res, $x, $y, $color[1]);
			$x++;
			$p += $bmp['bytes_per_pixel'];
		}
		$y--;
		$p += $bmp['decal'];
	}
	fclose($fileHandle);
	return $res;
}

function decimal2html($decimal) {
	list($a, $b) = explode(".", $decimal);
	return "<em>" . $a . "</em>" . "<i>." . $b . "</i>";
}

function getTimeDiff($startTime, $endTime = "null") {
	if ($endTime == "null")
		$endTime = time();
	$timeDiff = abs($endTime - $startTime);

	$result = array();
	$result['year'] = intval($timeDiff / 3600 / 24 / 365);
	$result['day'] = intval(($timeDiff - ($result['year'] * 3600 * 24 * 365)) / 3600 / 24);
	$result['hour'] = intval(($timeDiff - ($result['year'] * 3600 * 24 * 365) - ($result['day'] * 3600 * 24)) / 3600);
	$result['minute'] = intval(($timeDiff - ($result['year'] * 3600 * 24 * 365) - ($result['day'] * 3600 * 24) - ($result['hour'] * 3600)) / 60);
	$result['sec'] = intval(($timeDiff - ($result['year'] * 3600 * 24 * 365) - ($result['day'] * 3600 * 24) - ($result['hour'] * 3600) - ($result['minute'] * 60)));

	//$result['year2']=$timeDiff / 3600 / 24 / 365;
	return $result;
}

/*
 * This file was created by Liu Xianzhong
 *  This file has ended
 */