<?php

class accrecords {

	private $db;
	private $url;
	private $System;
	private $_SC;
	private $comm;
	public $proFecordsCacheFile;
	public $CacheFile;

	public function __construct($system) {

		$this->System = $system;

		$this->_SC = $system->_SC;

		$this->DB = $system->db;

		$this->url = $system->url;

		$this->comm = $system->comm;

		$this->proFecordsCacheFile = S_ROOT . "file/cache/profecordscachefile.php";

		$this->cacheFile = S_ROOT . "file/cache/kaihumingdan_";
	}

	public function setSystem($system) {

		$this->System = $system;

		$this->_SC = $system->_SC;

		$this->DB = $system->db;

		$this->comm = $system->comm;

		$this->proFecordsCacheFile = S_ROOT . "file/cache/profecordscachefile.php";

		$this->cacheFile = S_ROOT . "file/cache/kaihumingdan_";
	}

	public function getPhoneNum2() {

		$phoneNumPre = "152,158,177,133,132,131,130,155,187,139,182,150";

		$phoneNumPreArr = explode(",", $phoneNumPre);

		$phoneNumSuf = random_str(8);

		$k1 = rand(0, count($phoneNumPreArr) - 1);



		return $phoneNumPreArr[$k1] . $phoneNumSuf;
	}

	public function createOrder() {

		$table = "{$this->DB->tabPre}zhongchou_11";

		$sql = "SELECT * FROM `{$table}` WHERE `tg_status` <= '3' and `tg_status` > '1' ";

		$product = $this->DB->getResult($sql);

		foreach ($product as $k => $v) {

			$orderNum = rand(2, 6); //生成订单数量

			for ($i = 0; $i < $orderNum; $i++) {

				$coe = rand(1, 10); //订购数量系数

				if ($v['increase'] > 0)
					$fanwei = intval(($v['inventory'] - $v['minbuy']) / $v['increase']);

				$amount = $v['minbuy'];

				if ($coe > 5 && $coe < 10) {

					$num = rand(1, $fanwei) - 1;

					$amount = $v['minbuy'] + $v['increase'] * $num;
				} elseif ($coe == 10) {

					$amount = $v['inventory'];
				}

				$time = strtotime(date("Y-m-d")) + rand(9, 18) * 3600 + rand(1, 59) * 60;

				$data = array(
					"uid" => 0,
					"mod" => "zhongchou",
					"mid" => 11,
					"itemid" => $v['id'],
					"itemtitle" => $v['title'],
					"itemname" => $v['itemname'],
					"itemlink" => $this->url->setUrl("?m=zhongchou&ac=show&itemid={$v['id']}"), //$product['itemname'],
					"jiaoyisuo" => $v['jiaoyisuo'], //交易所id
					"cosprice" => $v['price'], //成本价
					"oriprice" => $v['price'], //原价
					"unitprice" => $v['price'], //产品单价
					"totalprice" => $v['price'] * $amount, //订单总价
					"cardpos" => "", //身份证正面
					"cardneg" => "", //身份证反面
					"phonenum" => $this->getPhoneNum2(), //手机号
					"amount" => $amount, //订购数量
					"account" => random_str(6), //交易所账号
					"ip" => getip(), //留言内容
					"show" => "2", //
					"status" => "0", //
					"addtime" => $time, //
					"edittime" => $time, //
				);

				$this->DB->insert("{$this->DB->tabPre}order_12", $data);
			}
		}
	}

	public function getPhoneNum() {

		$phoneNumPre = "152,158,177,133,132,131,130,155,187,139,182,150";

		$phoneNumPreArr = explode(",", $phoneNumPre);

		$phoneNumSuf = random_str(4);

		$k1 = rand(0, count($phoneNumPreArr) - 1);



		return $phoneNumPreArr[$k1] . "****" . $phoneNumSuf;
	}

	public function getName() {

		$surnameStr = "李,王,张,刘,陈,杨,赵,黄,周,吴,徐,孙,胡,朱,高,林,何,郭,马,罗,梁,宋,郑,谢,韩,唐,冯,于,董,萧,程,曹,袁,邓,许,傅,沈,曾,彭,吕,苏,卢,蒋,蔡,贾,丁,魏,薛,叶,阎,余,潘,杜,戴,夏,钟,汪,田,任,姜,范,方,石,姚,谭,廖,邹,熊,金,陆,郝,孔,白,崔,康,毛,邱,秦,江,史,顾,侯,邵,孟,龙,万,段,雷,钱,汤,尹,黎,易,常,武,乔,贺,赖,龚,文";

		$surname = explode(",", $surnameStr);

		$shenfen = array("先生", "先生", "女士");

		$k1 = rand(0, count($surname) - 1);

		$k2 = rand(0, count($shenfen) - 1);

		return $surname[$k1] . $shenfen[$k2];
	}

	public function getProduct() {

		$sql = "SELECT `id`,`title` FROM `{$this->DB->tabPre}zhongchou_11` WHERE `status`=1  ORDER BY RAND()";

		return $this->DB->getFirst($sql);
	}

	public function getTotal() {

		$this->totalCacheFile = S_ROOT . "file/cache/totalcachefile.php";

		$result = array();

		//$status = false;





		if (file_exists($this->totalCacheFile)) {

			$sdate = date("Ymd", filemtime($this->totalCacheFile));

			$date = date("Ymd");

			$result = include $this->totalCacheFile;

			if ($date != $sdate) {

				$result['ruku'] = $result['ruku'] + rand(200, 500);

				$result['hezuo'] = $result['hezuo'] + rand(0, 2);

				$result['canyu'] = $result['canyu'] + rand(5, 15);

				$this->createOrder();
			}
		} else {

			$result['ruku'] = rand(900000, 1500000);

			$result['hezuo'] = rand(20, 50);

			$result['canyu'] = rand(10000, 15000);

			$this->createOrder();
		}





		krsort($result);

		$this->writeCache($this->totalCacheFile, $result);

		return $result;
	}

	public function getProductFecords() {

		$min_fanyong = 20; //*100

		$max_fanyong = 300;

		$status = false;

		if (file_exists($this->proFecordsCacheFile)) {

			$date = date("Ymd");

			$fecords = include $this->proFecordsCacheFile;

			$k = count($fecords) - 1;

			if ($date != date("Ymd", $fecords[$k]['time']) && (date("w") != 0 && date("w") != 6)) {

				$status = true;

				$num = rand(3, 6);

				for ($i = 0; $i <= $num; $i++) {

					$item = $this->getProduct();

					$fecords[] = array(
						"itemid" => $item['id'],
						"title" => $item['title'],
						"name" => $this->getName(),
						"phonenum" => $this->getPhoneNum(),
						"fanyong" => rand($min_fanyong, $max_fanyong) * 100,
						"time" => time(),
					);
				}
			}
		} else {

			$status = true;

			$fecords = array();

			$num = $j = 0;

			for ($i = 15; $i >= 0; $i--) {

				if ($num == 0) {

					$num = rand(3, 6);
				}

				$time = time() - $j * 24 * 3600;

				if (date("w", $time) == 0) {

					$time = $time - 2 * 24 * 3600;

					$j = $j + 2;
				} elseif (date("w", $time) == 6) {

					$time = $time - 1 * 24 * 3600;

					$j = $j + 1;
				}

				$item = $this->getProduct();

				$fecords[$i] = array(
					"itemid" => $item['id'],
					"title" => $item['title'],
					"name" => $this->getName(),
					"phonenum" => $this->getPhoneNum(),
					"fanyong" => rand($min_fanyong, $max_fanyong) * 100,
					"time" => time(),
				);

				$num --;

				if ($num == 0) {

					$j++;
				}
			}
		}

		if ($status == true) {

			krsort($fecords);

			$this->writeCache($this->proFecordsCacheFile, $fecords);
		}

		return $fecords;
	}

	public function getProductKaihuFanyong($itemid, $itemtitle = "") {

		$min_rujin = 10; //*1000

		$max_rujin = 100;

		$min_fanyong = 20; //*100

		$max_fanyong = 300;



		$status = false;

		$filePath = $this->cacheFile . $itemid . ".php";

		$status = false;

		if (file_exists($filePath)) {

			$date = date("Ymd");

			$fecords = include $filePath;

			$k = count($fecords) - 1;

			if ($date != date("Ymd", $fecords[$k]['time']) && (date("w") != 0 && date("w") != 6)) {

				$status = true;

				$num = rand(3, 6);

				for ($i = 0; $i <= $num; $i++) {



					$fecords['kaihu'][] = array(
						"itemid" => $itemid,
						"name" => $this->getName(),
						"phonenum" => $this->getPhoneNum(),
						"rujin" => rand($min_rujin, $max_rujin) * 1000,
						"time" => time(),
					);

					$fecords['fanyong'] [] = array(
						"itemid" => $itemid,
						"name" => $this->getName(),
						"phonenum" => $this->getPhoneNum(),
						"fanyong" => rand($min_fanyong, $max_fanyong) * 100,
						"time" => time(),
					);
				}
			}
		} else {

			$status = true;

			$fecords = array();

			$num = $j = 0;

			for ($i = 15; $i >= 0; $i--) {

				if ($num == 0) {

					$num = rand(3, 6);
				}

				$time = time() - $j * 24 * 3600;

				if (date("w", $time) == 0) {

					$time = $time - 2 * 24 * 3600;

					$j = $j + 2;
				} elseif (date("w", $time) == 6) {

					$time = $time - 1 * 24 * 3600;

					$j = $j + 1;
				}

				//$item = $this->getProduct();

				$fecords['kaihu'][$i] = array(
					"itemid" => $itemid,
					"name" => $this->getName(),
					"phonenum" => $this->getPhoneNum(),
					"rujin" => rand($min_rujin, $max_rujin) * 1000,
					"time" => time(),
				);

				$fecords['fanyong'] [$i] = array(
					"itemid" => $itemid,
					"name" => $this->getName(),
					"phonenum" => $this->getPhoneNum(),
					"fanyong" => rand($min_fanyong, $max_fanyong) * 100,
					"time" => time(),
				);

				$num --;

				if ($num == 0) {

					$j++;
				}
			}
		}

		if ($status == true) {

			krsort($fecords);

			$this->writeCache($filePath, $fecords);
		}

		return $fecords;
	}

	public function writeCache($file, $data) {

		$text = "<?php  return " . var_export($data, true) . ";";

		return file_put_contents($file, $text, FILE_USE_INCLUDE_PATH);
	}

}
