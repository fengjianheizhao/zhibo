<?php

class display {
	/* 构造函数 */

	public function __construct() {
		
	}

	/*
	  public function ads($id, $return = true, $template = null, $status = true) {
	  $data = $this->ads->adszoneshow($id);
	  if ($data) {
	  $sqladd = "";
	  if ($status) {
	  $sqladd .= " and `status`=1 ";
	  }
	  $data['list'] = $this->ads->adslist("`aid`='{$id}' {$sqladd} ORDER BY  `sort` ASC , `id` DESC");
	  }
	  if ($return) {
	  if ($template == null) {
	  if ($data['template']) {
	  $template = "chip/{$data['template']}";
	  } else {
	  $template = "chip/ads";
	  }
	  } else {
	  $template = "chip/{$template}";
	  }
	  $this->display($data, $template);
	  } else {
	  return $data;
	  }
	  }
	 */

	public function tag($string, $template = NULL) {

		//parse_url
		//parse_str
		//http_build_query
		//
		//t	表名
		//f	字段
		//w	条件
		//o	order
		//l	limit
		$URL = $this->url;

		/*  此段代码可替换为：parse_str($string);
		  $arr = explode("&", $string);
		  foreach ($arr as $val) {
		  $len = strlen($val);
		  $pos = strpos($val, "=");
		  $k = substr($val, 0, $pos);
		  $v = substr($val, $pos + 1, $len);
		  $pararr[$k] = $v;
		  }
		  extract($pararr);
		 */
		//parse_str($string);
		parse_str($string, $pararr);


		if (empty($pararr['t']))
			return array(); //表名必须

		$field = empty($pararr['f']) ? "*" : $pararr['f']; //查询的字段
		$where = empty($pararr['w']) ? "" : "WHERE  " . $pararr['w']; //查询条件
		$orderby = empty($pararr['o']) ? "" : "ORDER BY  " . $pararr['o']; //排序
		$limt = empty($pararr['l']) ? "" : "LIMIT  " . $pararr['l']; //查询记录数

		$sql = "SELECT {$field} FROM  `" . $this->DB->tabPre . $pararr['t'] . "`  {$where}  {$orderby}  {$limt}";
		$list = $this->DB->getResult($sql); //拼装sql语句并执行
		if ($template == null) {
			return $list;
		} else {
			//@include $this->template("tag/" . $template);
		}
	}

	public function display($DATA, $template) {
		extract($DATA);
		@include $template;
	}

	public function initialize($DATA) {
		foreach ($DATA as $k => $v) {
			$this->$k = $v;
		}
		return $this;
	}

}
