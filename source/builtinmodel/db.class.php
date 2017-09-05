<?php

class db {

	private $dbms;  //数据库系统；mysql,sqlserver,oracle等等;
	private $dbhost;  //数据库主机
	private $dbuser;  //数据库用户名
	private $dbpwd;   //数据库用户名密码
	private $dbname; //数据库名
	private $dbdns;  //

	/**/
	private $pattern;  //链接类型   长链接/短链接
	private $charset;  //数据库编码，GBK,UTF8,gb2312

	/**/
	private $conn;  //数据库连接标识;
	private $result;   //执行query命令的结果资源标识
	public $sql;   //sql执行语句
	public $tabPre;   //数据表前缀

	/**/
	public $_ROOT;   //

	/**/
	private $cache = 0; //数据查询开启缓存,大于0 则为缓存时间，否则表示关闭缓存
	private $debug = false; //错误信息显示
	private $errlog = false; //数据库错误日志记录
	private $auxiliary = false;   //数据库优化辅助//记录执行的sql语句和执行时间，建议优化数据查询的时候开启,避免产生大量的记录文件

	/**/
	public $count = 0; //sql语句影响行数，及时使用，以免被覆盖

	/* 构造函数 */

	public function __construct($config) {
		/**/
		$this->DBms = $config['dbms'];
		$this->DBhost = $config['dbhost'];
		$this->DBuser = $config['dbuser'];
		$this->DBpwd = $config['dbpwd'];
		$this->DBname = $config['dbname'];
		$this->DBdns = "{$this->DBms}:host={$this->DBhost};dbname={$this->DBname}";

		/**/
		$this->pattern = $config['dbpattern'];
		$this->charset = $config['dbcharset'];
		/**/
		$this->tabPre = $config['tabPre'];

		/**/
		$this->cache = $config['cache'];
		$this->debug = $config['debug'];
		$this->errlog = $config['errlog']; //错误日志文件  按天存储
		$this->auxiliary = $config['auxiliary']; //优化辅助文件,按照访问页面存储




		$this->conn = "PDO";
		$this->connect();
	}

	/**/

	public function setRoot($ROOT) {
		$this->_ROOT = $ROOT;
	}

	/* 数据库连接 */

	public function connect() {
		try {
			if ($this->pattern) {
				//永久链接
				$this->conn = new PDO($this->DBdns, $this->DBuser, $this->DBpwd, array(PDO::ATTR_PERSISTENT => true)); //初始化一个PDO对象
			} else {
				//临时链接
				$this->conn = new PDO($this->DBdns, $this->DBuser, $this->DBpwd); //初始化一个PDO对象
			}
			//设置错误模式为异常模式
			$this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

			$this->conn->exec("SET NAMES {$this->charset}");
		} catch (PDOException $e) {
			$this->showError("链接数据库{$this->DBname}失败：", $e->getMessage());
		}
	}

	/* 数据库执行语句，可执行查询添加修改删除等任何sql语句 */

	private function query($sql) {
		try {
			$this->result = null; //释放上一次查询的结果集
			$this->sql = $sql;
			!$this->auxiliary or $t1 = microtime(true); //sql语句执行开始时间
			$this->result = $this->conn->query($this->sql);
			!$this->auxiliary or $t2 = microtime(true); //sql语句执行结束时间
			if ($this->auxiliary) {
				$auxiliaryFile = "db/auxiliary";
				$t = $t2 - $t1;
				$message = "{$t}\t{$this->sql}";
				LxzCmsRoot\LxzCms::WLog($message, $auxiliaryFile);
			}
		} catch (Exception $e) {

			$msg = "";
			$msg .= "SQL语句：" . $this->sql;
			$msg .= "\r\n异常信息：" . $e->getMessage();
			$backtrace = debug_backtrace(false, 4);
			foreach ($backtrace as $k => $v) {
				$msg .= "\r\n回溯信息：{$v['file']} in line {$v['line']}  at use function {$v['function']} ";
			}
			$this->showError("sql执行query出错：", $msg);
		}
		return $this->result;
	}

	/* 执行插入，修改操作的sql */

	public function exec($sql) {
		try {
			$this->sql = $sql;
			!$this->auxiliary or $t1 = microtime(true); //sql语句执行开始时间
			$this->count = $this->conn->exec($this->sql);
			!$this->auxiliary or $t2 = microtime(true); //sql语句执行结束时间
			if ($this->auxiliary) {
				$auxiliaryFile = "db/auxiliary";
				$t = $t2 - $t1;
				$message = "{$t}\t{$this->sql}";
				LxzCmsRoot\LxzCms::WLog($message, $auxiliaryFile);
			}
			$status = true;
		} catch (Exception $e) {
			$msg = "";
			$msg .= "SQL语句：" . $this->sql;
			$msg .= "\r\n异常信息：" . $e->getMessage();
			$backtrace = debug_backtrace(false, 4);
			foreach ($backtrace as $k => $v) {
				$msg .= "\r\n回溯信息：{$v['file']} in line {$v['line']}  at use function {$v['function']} ";
			}
			$this->showError("sql执行query出错：", $msg);
			$this->count = 0;
			$status = false;
		}
		return $status;
	}

	private function setFetchMode($fetchMode = "ASSOC") {
		switch ($fetchMode) {
			/* 在 PDOStatement::fetchAll() 中无效。
			  case "LAZY":
			  //指定获取方式，将结果集中的每一行作为一个对象返回，此对象的变量名对应着列名。PDO::FETCH_LAZY 创建用来访问的对象变量名。在 PDOStatement::fetchAll() 中无效。
			  $this->result->setFetchMode(PDO::FETCH_LAZY);
			  break;
			 */
			case "ASSOC":
				//指定获取方式，将对应结果集中的每一行作为一个由列名索引的数组返回。如果结果集中包含多个名称相同的列，则PDO::FETCH_ASSOC每个列名只返回一个值。
				$this->result->setFetchMode(PDO::FETCH_ASSOC);
				break;
			case "NAMED":
				//指定获取方式，将对应结果集中的每一行作为一个由列名索引的数组返回。如果结果集中包含多个名称相同的列，则PDO::FETCH_ASSOC每个列名 返回一个包含值的数组。
				$this->result->setFetchMode(PDO::FETCH_NAMED);
				break;
			case "NUM":
				//指定获取方式，将对应结果集中的每一行作为一个由列号索引的数组返回，从第 0 列开始。
				$this->result->setFetchMode(PDO::FETCH_NUM);
				break;
			case "BOTH":
				//指定获取方式，将对应结果集中的每一行作为一个由列号和列名索引的数组返回，从第 0 列开始。
				$this->result->setFetchMode(PDO::FETCH_BOTH);
				break;
			case "OBJ":
				//指定获取方式，将结果集中的每一行作为一个属性名对应列名的对象返回。
				$this->result->setFetchMode(PDO::FETCH_OBJ);
				break;
			default :
				$this->result->setFetchMode(PDO::FETCH_ASSOC);
				break;
		}
	}

	//执行sql语句，读取第一条数据
	public function getFirst($sql, $fetchMode = "ASSOC", $cache = null) {
		//echo $fetchMode;
		$result = $this->getCache($fetchMode . $sql, $cache);
		if ($result) {
			return $result;
		}
		if ($this->query($sql)) {
			$this->setFetchMode($fetchMode);
			$result = $this->result->fetch();

			$this->setCache($fetchMode . $sql, $result, $cache);
			return $result;
		} else {
			return null;
		}
	}

	//执行sql语句，返回数据列表
	public function getResult($sql, $fetchMode = "ASSOC", $cache = null) {
		$result = $this->getCache($fetchMode . $sql, $cache);
		if ($result) {
			return $result;
		}
		if ($this->query($sql)) {
			$this->setFetchMode($fetchMode);
			$result = $this->result->fetchAll();
			$this->setCache($fetchMode . $sql, $result, $cache);
			return $result;
		} else {
			return null;
		}
	}

	//简化删除del
	public function delete($table, $condition) {
		$this->exec("DELETE FROM `{$table}`  WHERE {$condition}");
	}

	//简化版select
	public function select($table, $condition, $fields = "*") {

		$cond = $condition;
		if (is_array($condition)) {
			$cond = "";
			foreach ($condition as $k => $v) {
				$cond .= "`{$k}`='{$v}' and";
			}
			$cond = rtrim($cond, "and");
		}
		$condition = $cond;
		$sql = "SELECT {$fields} FROM `{$table}` WHERE {$condition}";
		return $this->getResult($sql);
	}

	//简化版插入数据,表名，数据，前缀
	public function insert($table, $data) {
		$values = $fields = "";
		foreach ($data as $k => $v) {
			$fields .= "`" . $k . "`,";
			$values .= "'" . $v . "',";
		}
		$fields = rtrim($fields, ",");
		$values = rtrim($values, ",");
		//$tabPre = $tabPre === null ? $this->tabPre : $tabPre;
		//$table = $tabPre . $table;
		if ($this->exec("INSERT INTO `{$table}` ($fields) VALUES ($values)")) {
			return $this->lastInsertId();
		} else {
			return false;
		}
	}

	//简化修改update
	public function update($table, $data, $condition) {
		$cond = $condition;
		if (is_array($condition)) {
			$cond = "";
			foreach ($condition as $k => $v) {
				$cond .= "`{$k}`='{$v}' and";
			}
			$cond = rtrim($cond, "and");
		}
		$condition = $cond;

		$mod_content = "";
		foreach ($data as $k => $v) {
			$mod_content .= "`" . $k . "`='" . $v . "',";
		}
		$mod_content = rtrim($mod_content, ",");
		return $this->exec("UPDATE `{$table}`  SET $mod_content WHERE {$condition}");
	}

	/* 返回最后插入行的ID或序列值 */

	public function lastInsertId() {
		return $this->conn->lastInsertId();
	}

	// 返回受上一个 SQL 语句影响的行数
	public function rowCount() {
		$this->count = $this->conn->rowCount();
		return $this->count;
	}

	//输出显示sql语句
	public function showError($title = "", $msg = "") {
		if ($this->debug) {
			echo "<fieldset>";
			echo "<legend>错误信息提示:</legend>";
			echo "<div style='font-size:14px; clear:both; font-family:Verdana, Arial, Helvetica, sans-serif;'>";
			echo "<div style='height:20px; background:#FF0000; border:1px #FF0000 solid;color:white;'>" . $title . "</div>";
			echo "<div style='color:red; '><pre style=' white-space: pre-wrap;'>" . $msg . "</pre></div>";
			echo "</div>";
			echo "</fieldset>";
		}
		if ($this->errlog) {
			$time = date("Y-m-d H:i:s");
			$logFile = "db/error";
			$message = $title . "\r\n";
			$message .= $msg;
			//写入日志文件
			LxzCmsRoot\LxzCms::WLog($message, $logFile);
		}
	}

	//取得 MySQL 服务器信息
	public function serverInfo($num = 2) {
		switch ($num) {
			case 1 :
				return $this->conn->getAttribute(PDO::ATTR_SERVER_INFO); //MySQL 服务器信息
				break;
			case 2 :
				return $this->conn->getAttribute(PDO::ATTR_DRIVER_NAME);  //取得连接驱动
				break;
			case 3 :
				return $this->conn->getAttribute(PDO::ATTR_SERVER_VERSION); //返回 PDO 所连接的数据库服务的版本信息。
				break;
			case 4 :
				return $this->conn->getAttribute(PDO::ATTR_CLIENT_VERSION);  //返回 PDO 驱动所用客户端库的版本信息。
				break;
			default:
				return $this->conn->getAttribute(PDO::ATTR_SERVER_VERSION);  //返回 PDO 所连接的数据库服务的版本信息。
		}
	}

	//获取缓存数据
	public function getCache($sql, $cache = null) {
		$cache = $cache === null ? $this->cache : intval($cache);
		if ($cache > 0) {
			$sqlMd5 = strtolower(md5($sql));
			$cacheRoot = $this->_ROOT . "cache/dbcache";
			$cachePath = $cacheRoot . "/" . date("Ymd");
			$filePath = $cachePath . "/" . substr($sqlMd5, 0, 4);
			$filePath .= "/" . $sqlMd5 . ".php";

			//缓存文件存在，切时差小于缓存时长
			if (file_exists($filePath) && (time() - filemtime($filePath) ) <= $cache) {
				return include $filePath;
			}
		}
		return false;
	}

	//设置缓存数据
	public function setCache($sql, $data, $cache = null) {
		$cache = $cache === null ? $this->cache : intval($cache);
		if ($cache > 0) {
			$sqlMd5 = strtolower(md5($sql));
			$cacheRoot = $this->_ROOT . "cache/dbcache";
			$cachePath = $cacheRoot . "/" . date("Ymd");
			$filePath = $cachePath . "/" . substr($sqlMd5, 0, 4);
			if (!is_dir($cachePath)) {//今天的不目录存在，就清理所有缓存，并新建缓存目录,避免缓存爆仓
				LxzCmsRoot\LxzCms::delDirAll($cacheRoot);
				//LxzCmsRoot\LxzCms::CreateFolders($filePath);
			}
			LxzCmsRoot\LxzCms::WDataCache($filePath . "/" . $sqlMd5 . ".php", $data);
		}
	}

	// 获得客户端真实的IP地址 
	public function getClientIp() {
		if (getenv("HTTP_CLIENT_IP") && strcasecmp(getenv("HTTP_CLIENT_IP"), "unknown")) {
			$ip = getenv("HTTP_CLIENT_IP");
		} else if (getenv("HTTP_X_FORWARDED_FOR") && strcasecmp(getenv("HTTP_X_FORWARDED_FOR"), "unknown")) {
			$ip = getenv("HTTP_X_FORWARDED_FOR");
		} else if (getenv("REMOTE_ADDR") && strcasecmp(getenv("REMOTE_ADDR"), "unknown")) {
			$ip = getenv("REMOTE_ADDR");
		} else if (isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], "unknown")) {
			$ip = $_SERVER['REMOTE_ADDR'];
		} else {
			$ip = "unknown";
		}
		return($ip);
	}

	//析构函数，自动关闭数据库,垃圾回收机制
	public function __destruct() {
		$this->conn = null;
	}

}
