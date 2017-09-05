<?php

class category implements setkernel {

	private $DB;
	private $Kernel;
	private $table;

	public function __construct() {
		
	}

	public function cateadd($data) {
		$data['addtime'] = time();
		$data['edittime'] = time();
		return $this->DB->insert($this->table, $data);
	}

	public function cateedit($id, $data) {
		$data['edittime'] = time();
		$this->DB->update($this->table, $data, " `cid`='{$id}'");
	}

	public function cateListEdit($itemids, $category) {
		foreach ($itemids as $k => $v) {
			$itemid = intval($v);
			if ($itemid) {
				$data = array();
				$data = $category[$itemid];
				$data['pid'] = intval($data['pid']);
				$data['sort'] = intval($data['sort']);
				if ($data['name']) {
					$this->cateedit($itemid, $data);
				}
			}
		}
	}

	public function cateremove($itemids) {
		if (is_array($itemids)) {
			foreach ($itemids as $k => $v) {
				$this->cateremove($v);
			}
		} else {
			$itemid = intval($itemids);
			$cate = $this->getcat($itemid);
			if ($cate) {
				if ($cate['childs']) {
					$this->DB->delete($this->table, "`cid` IN ({$cate['childs']})");
				}
				$this->DB->delete($this->table, "`cid`='{$itemid}'");
			}
		}
	}

	public function getPosi($cid) {
		$posi = array();
		$cate = $this->getcat($cid);
		if ($cate['pid'] != 0) {
			$posi = $this->getPosi($cate['pid']);
		}
		$posi[] = $cate;
		return $posi;
	}

	//格式化分类
	public function cateinit($m, $type) {
		$catelist = $this->getmodlist($m, $type, 0);
		$this->traversal($catelist);
	}

	//递归格式化分类
	public function traversal($catelist, $key = 0, $pids = "0") {
		if ($catelist && is_array($catelist)) {
			$childs = $c_str = "";
			foreach ($catelist[$key] as $key => $val) {
				$updata = array();
				if ($catelist[$val['cid']] && is_array($catelist[$val['cid']])) {
					$updata['child'] = count($catelist[$val['cid']]);
					$childs_c = $this->traversal($catelist, $val['cid'], $pids . "," . $val['cid']);
					$childs = $childs_c . "," . $childs;
					$updata['childs'] = $childs_c;
				} else {
					$updata['child'] = 0;
					$updata['childs'] = "";
				}
				$updata['pids'] = $pids;
				$updata['edittime'] = time();

				$this->DB->update($this->table, $updata, " `cid`='{$val['cid']}'");

				$childs = $childs . $c_str . $val['cid'];
				$c_str = ",";
			}
			return $childs;
		} else {
			return FALSE;
		}
	}

	//根据分类id返回分类信息
	public function getcat($cid) {
		if ($cid) {
			return $res = $this->DB->getFirst("SELECT * FROM `{$this->table}` WHERE `cid` = '{$cid}' ");
		} else {
			return false;
		}
	}

	//0--返回以分类父级id为数组索引的分类列表
	//1--返回以分类id为数组索引的分类列表
	public function getlist($where, $index = 0) {
		$list = $this->DB->getResult("SELECT * FROM `{$this->table}` WHERE $where ORDER BY `sort` ASC,`cid` ASC");
		$data = array();
		foreach ($list as $val) {
			if ($index == 0) {
				$data[$val['pid']][] = $val;
			} elseif ($index == 1) {
				$data[$val['cid']] = $val;
			}
		}
		return $data;
	}

	public function getmodlist($m, $type, $index = 0) {
		return $this->getlist(" `mod` = '{$m}'  AND `type` = '{$type}'", $index);
	}

	//返回阶梯
	public function jieti($arr, $key = 0, $pre = "") {
		if ($arr[$key] && is_array($arr[$key])) {
			$data = array();
			$num = count($arr[$key]);
			$i = 1;
			foreach ($arr[$key] as $val) {
				if ($num == $i) {
					$pstr = "└";
				} else {
					$pstr = "├";
				}
				$data[$val['cid']] = $pre . $pstr . $val['name'];
				if ($val['child']) {
					$arr2 = $this->jieti($arr, $val['cid'], $pre . "&#160;");
					if ($arr2) {
						foreach ($arr2 as $k => $v) {
							$data[$k] = $v;
						}
					}
				}
				$i++;
			}
			return $data;
		} else {
			return false;
		}
	}

	public function setKernel($Kernel) {
		$this->Kernel = $Kernel;
		$this->DB = $Kernel->DB;
		$this->table = "{$this->DB->tabPre}category";
	}

}
