<?php

class paged implements setkernel {

	private $Kernel;
	private $DB;
	private $rows = 0; //每页记录数
	private $pagenum = 1; //总页数
	private $page = 1; //当前页数
	private $tatalrows = 0; //记录总数
	private $list = array();
	private $cont_sql = "";
	public $sql = "";
	private $prev = "1"; //上一页
	private $next = "1"; //下一页
	private $spaced = 4; //分页部分间距
	private $page_start = 0; //
	private $page_end = 0; //

	public function __construct() {
		
	}

	public function setRows($rows) {
		$this->rows = $rows;
	}

	public function getList($page, $from, $field = "*", $group = "") {
		$this->cont_sql = " SELECT count(*) as count " . $from; //构建统计的sql
		$this->sql = " SELECT  " . $field . "  " . $from; //构建查询的sql
		$rows = $this->DB->getFirst($this->cont_sql);
		//$rows = $this->DB->fetch_assoc();
		$this->tatalrows = $rows['count']; //获取记录总数
		$this->pagenum = ceil($this->tatalrows / $this->rows); //总页数&最大页码
		$this->pagenum = ($this->pagenum == 0) ? 1 : $this->pagenum;
		$page = $page > 0 ? $page : 1; //当前页码
		$this->page = $page > $this->pagenum ? $this->pagenum : $page; //当前页码
		$limit = " limit  " . (($this->page - 1) * $this->rows) . " , " . $this->rows;
		$this->sql = $this->sql . $group . $limit;
		$this->list = $this->DB->getResult($this->sql);
		$this->prev = ($this->page - 1) > 0 ? $this->page - 1 : 1;
		$this->next = ($this->page + 1) <= $this->pagenum ? $this->page + 1 : $this->pagenum;
		$this->pagelist();
		return $this->data();
	}

	public function data() {
		$data['list'] = $this->list; //列表
		$data['page'] = $this->page; //当前页码
		$data['pagenum'] = $this->pagenum; //总页数
		$data['tatalrows'] = $this->tatalrows; //总记录数
		$data['sql'] = $this->sql; //查询语句
		$data['rows'] = $this->rows; //每页记录数
		$data['prev'] = $this->prev;
		$data['next'] = $this->next;
		$data['page_start'] = $this->page_start;
		$data['page_end'] = $this->page_end;
		return $data;
	}

	public function pagelist() {

		$page_start = $this->page - $this->spaced;
		$page_end = $this->page + $this->spaced;
		if ($page_start <= 0) {
			$page_start = 1;
			$page_end = 2 * $this->spaced + 1;
			$page_end = $page_end < $this->pagenum ? $page_end : $this->pagenum;
		}
		if ($page_end > $this->pagenum) {
			$page_end = $this->pagenum;
			$page_start = $this->pagenum - (2 * $this->spaced + 1);
			$page_start = $page_start > 0 ? $page_start : 1;
		}
		$this->page_start = $page_start;
		$this->page_end = $page_end;
	}

	public function setDb($DB) {
		$this->DB = $DB;
	}

	public function setKernel($Kernel) {
		$this->Kernel = $Kernel;
		$this->DB = $Kernel->DB;
	}

}
