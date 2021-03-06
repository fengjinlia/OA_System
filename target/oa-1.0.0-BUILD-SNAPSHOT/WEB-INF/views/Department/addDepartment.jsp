<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap -->
<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<form class="form-horizontal">

					<div class="form-group">
						<label for="departmentName" class="col-sm-2 control-label">部门名称</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="departmentName"
								placeholder="部门名称">
						</div>
					</div>

					<div class="form-group">
						<label for="departmenttelephone" class="col-sm-2 control-label">部门联系方式</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="departmenttelephone"
								placeholder="部门联系方式">
						</div>
					</div>

					<div class="form-group">
						<label for="departmentaddress" class="col-sm-2 control-label">地址</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="departmentaddress"
								placeholder="地址">
						</div>
					</div>
					<div class="form-group">
						<button type="button"
							class="btn btn-default btn-block btn-primary" onClick="commit()">提交</button>
					</div>
				</form>
			</div>
		</div>

		<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
		<script src="${ctx }/assets/js/jquery-1.7.2.min.js"></script>
		<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
		<script src="${ctx }/assets/js/bootstrap.min.js"></script>
		<script type="text/javascript">

			function commit() {
				var name = $("#departmentName").val();
				var tel = $("#departmenttelephone").val();
				var addr = $("#departmentaddress").val();
				$
						.ajax({
							type : "POST",
							url : "${ctx}/DepartmentControl/addDepartment",
							data : {
								departmentname : name,
								departmenttelephone : tel,
								departmentaddress : addr,
							},
							success : function(data) {
								if (data == "SUCCESS") {
									var index = parent.layer
											.getFrameIndex(window.name); //先得到当前iframe层的索引
									window.parent.location.reload();
									parent.layer.close(index); //再执行关闭
								}
							}
						});
			}
		</script>
</body>
</html>