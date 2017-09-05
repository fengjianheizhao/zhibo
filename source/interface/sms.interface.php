<?php

/**
 * sms接口，系统短信接口,不管接入哪个短信平台，短信接口需要实现此接口的方法，此接口的方法是系统调用的发送短信的接口
 * @name expand
 * @type interface
 * @author Liu Xianzhong<825471072@qq.com>
 * @copyright lxzcms.com
 * @version 1.0
 */
interface sms {

	/**
	 * 将内核对象传给拓展，让拓展可以使用内核的公共资源
	 * @name setKernel
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::setKernel($Kernel);
	 * @param $Kernel  内核对象
	 * @return 无返回值
	 * @version 1.0
	 */
	public function sendSms($data);
}

/*
 * This file was created by Liu Xianzhong
 *  This file has ended
 */	