<?php

/**
 * 邮件发送接口
 * @name expand
 * @type interface
 * @author Liu Xianzhong<825471072@qq.com>
 * @copyright lxzcms.com
 * @version 1.0
 */
interface email {

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
	public function sendEmail($data);
}

/*
 * This file was created by Liu Xianzhong
 *  This file has ended
 */