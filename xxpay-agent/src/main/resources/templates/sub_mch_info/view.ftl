<div style="margin: 15px;">
	<form class="layui-form">

		<div class="layui-form-item">
			<label class="layui-form-label">是否启用</label>
			<div class="layui-input-block">
				<#if item.state = 1>
					<input type="text" style="color: green" disabled="disabled" class="layui-input" value="启用" }">
				<#else>
					<input type="text" style="color: red" disabled="disabled" class="layui-input" value="停止" }">
				</#if>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">公司名称</label>
			<div class="layui-input-block">
				<input type="text" name="name"  disabled="disabled"  autocomplete="off" class="layui-input" value="${item.name?if_exists }">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">联系人姓名</label>
			<div class="layui-input-block">
				<input type="text" name="contactName"  disabled="disabled" autocomplete="off" class="layui-input" value="${item.contactName?if_exists }">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">联系人号码</label>
			<div class="layui-input-block">
				<input type="text" name="contactMobile" disabled="disabled"  autocomplete="off" class="layui-input" value="${item.contactMobile?if_exists }">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">创建时间</label>
			<div class="layui-input-block">
				<input type="text" disabled="disabled" class="layui-input" value="${(item.createTime?string("yyyy-MM-dd HH:mm:ss"))!''} ">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">更新时间</label>
			<div class="layui-input-block">
				<input type="text" disabled="disabled" class="layui-input" value="${(item.updateTime?string("yyyy-MM-dd HH:mm:ss"))!''} ">
			</div>
		</div>
		<button lay-filter="edit" lay-submit style="display: none;"></button>
	</form>
</div>