<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="head/link.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登陆界面</title>
</head>
<style type="text/css">
	.bg-wrap, body, html {height: 100%;}
	input{line-height: normal;-webkit-appearance: textfield;background-color: white;-webkit-rtl-ordering: logical;cursor: text;padding: 1px;border-width: 2px;border-style: inset;border-color: initial;border-image: initial;}
	input[type="text"], input[type="password"]{border: 0;outline: 0;}
	input, button{text-rendering: auto;color: initial;letter-spacing: normal;word-spacing: normal;text-transform: none;text-indent: 0px;text-shadow: none;display: inline-block;text-align: start;margin: 0em;font: 400 13.3333px Arial;}
	input[type=button]{-webkit-appearance: button;cursor: pointer;}
	.bg-wrap {position: relative;background: url(http://img.javaex.cn/FipOsQoe90u_7i3dOVpaeX5QD7c6) top left no-repeat;background-size: cover;overflow: hidden;}
	.main-cont-wrap{z-index: 1;position: absolute;top: 50%;left: 50%;margin-left: -190px;margin-top: -255px;box-sizing: border-box;width: 380px;padding: 30px 30px 40px;background: #fff;box-shadow: 0 20px 30px 0 rgba(63,63,65,.06);border-radius: 10px;}
	.form-title{margin-bottom: 40px;}
	.form-title>span{font-size: 20px;color: #2589ff;}
	.form-item{margin-bottom: 30px;position: relative;height: 40px;line-height: 40px;border-bottom: 1px solid #e3e3e3;box-sizing: border-box;}
	.form-txt{display: inline-block;width: 70px;color: #595961;font-size: 14px;margin-right: 10px;}
	.form-input{border: 0;outline: 0;font-size: 14px;color: #595961;width: 155px;}
	.form-btn{margin-top: 40px;}
	.ui-button{display: block;width: 320px;height: 50px;text-align: center;color: #fff;background: #2589ff;border-radius: 6px;font-size: 16px;border: 0;outline: 0;}
</style>
<body>
<div class="bg-wrap">
	<div class="main-cont-wrap login-model">
		<form id="form" method="post" action="../emp">
			<input type="hidden" name="act" value="login2" />
			<div class="form-title">
				<span>后台登录</span>
			</div>
			<div class="form-item">
				<span class="form-txt">账号：</span>
				<input type="text" class="form-input original" id="login_name" name="username" placeholder="请输入账号" data-type="必填" error-pos="30" />
			</div>
			<div class="form-item">
				<span class="form-txt">密码：</span>
				<input type="password" class="form-input original" name="password" placeholder="请输入密码" data-type="必填" error-pos="30" />
			</div>
			<div class="form-btn">
				<input type="submit" class="ui-button" value="登录" />
			</div>
		</form>
	</div>
</div>
</body>

</html>