<?php

defined('IN_SYSTEM') or exit('Access Denied');

abstract class Model extends Kernel {

	public $config;

	public function __construct() {
		parent::__construct();
		//$this->config = $this->model[$this->MOD['model']];
		$this->captcha();
	}

	public function setSize() {
		switch ($this->ac) {
			case 'login'://登录页面的验证码
				$size = array(
					"width" => 130,
					"height" => 36,
					"font_size" => 26,
				);
				break;
			default :
				$size = array(
					"width" => 60,
					"height" => 26,
					"font_size" => 14,
				);
				break;
		}
		return $size;
	}

	public function captcha() {
		//字体列表
		$font = array(
			$this->_APP_ROOT . "file/font/arial.ttf",
			$this->_APP_ROOT . "file/font/msyh.ttf",
			$this->_APP_ROOT . "file/font/msyhbd.ttf",
			$this->_APP_ROOT . "file/font/times.ttf",
		);


		$size = $this->setSize();
		$width = $size['width'];
		$height = $size['height'];
		$font_size = $size['font_size'];
		//文件头...
		header("Content-type: image/png");
		//创建真彩色白纸
		$im = @imagecreatetruecolor($width, $height) or die("建立图像失败");
		//获取背景颜色
		$background_color = imagecolorallocate($im, 255, 255, 255);
		//填充背景颜色(这个东西类似油桶)
		imagefill($im, 0, 0, $background_color);
		//获取边框颜色
		$border_color = imagecolorallocate($im, 200, 200, 200);
		//画矩形，边框颜色200,200,200
		imagerectangle($im, 0, 0, $width - 1, $height - 1, $border_color);

		//逐行炫耀背景，全屏用1或0
		for ($i = 2; $i < ($height - 2); $i++) {
			//获取随机淡色
			$line_color = imagecolorallocate($im, rand(200, 255), rand(200, 255), rand(200, 255));
			//画线
			imageline($im, 2, $i, $width - 3, $i, $line_color);
		}


		//设置印上去的文字
		$Str[0] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		$Str[1] = "abcdefghijklmnopqrstuvwxyz";
		$Str[2] = "81234567891234567897123456";

		//获取第1个随机文字
		$imstr[0]["s"] = $Str[rand(0, 2)][rand(0, 25)];
		$imstr[0]["x"] = rand(2, 5);
		//$imstr[0]["y"] = 30;
		$imstr[0]["y"] = rand($font_size + 3, $font_size + 7);

		//获取第2个随机文字
		$imstr[1]["s"] = $Str[rand(0, 2)][rand(0, 25)];
		$imstr[1]["x"] = $imstr[0]["x"] + $font_size - 1 + rand(0, 1);
		$imstr[1]["y"] = rand($font_size + 3, $font_size + 7);

		//获取第3个随机文字
		$imstr[2]["s"] = $Str[rand(0, 2)][rand(0, 25)];
		$imstr[2]["x"] = $imstr[1]["x"] + $font_size - 1 + rand(0, 1);
		$imstr[2]["y"] = rand($font_size + 3, $font_size + 7);

		//获取第4个随机文字
		$imstr[3]["s"] = $Str[rand(0, 2)][rand(0, 25)];
		$imstr[3]["x"] = $imstr[2]["x"] + $font_size - 1 + rand(0, 1);
		$imstr[3]["y"] = rand($font_size + 3, $font_size + 7);
		$captcha = "";
		//写入随机字串
		for ($i = 0; $i < 4; $i++) {
			//获取随机较深颜色
			$text_color = imagecolorallocate($im, rand(50, 180), rand(50, 180), rand(50, 180));

			//随机倾斜角度
			$angle = rand(-10, 10);

			//随机选择字体
			$f = rand(0, count($font) - 1);

			//写 TTF 文字到图中
			imagettftext($im, $font_size, $angle, $imstr[$i]["x"], $imstr[$i]["y"], $text_color, $font[$f], $imstr[$i]["s"]);
			//画文字
			//imagechar($im, $font_size, $imstr[$i]["x"], $imstr[$i]["y"], $imstr[$i]["s"], $text_color);
			$captcha .= $imstr[$i]["s"];
		}
		$this->comm->setSession("captcha", $captcha);
		//显示图片
		imagepng($im);
		//销毁图片
		imagedestroy($im);
	}

}

/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */