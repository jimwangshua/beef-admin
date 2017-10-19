<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <%@include file="/view/resource.jsp" %>
  </head>
  <style>
	  .blockdiv{
		  width: 150px;padding: 5px; margin-left: 3px; margin-right: 3px;float:left; border: 1px solid red;
	  }
	  .blockdiv-input{
		  width: 100%;margin-bottom :5px;
	  }


  </style>
  <body class="easyui-layout">
 	 <!-- Search panel start -->
 	 <div class="ui-search-panel" region="north" style="height: 80px;" title="过滤条件" data-options="striped: true,collapsible:false,iconCls:'icon-search',border:false" >  
 	 <form id="searchForm">
        <p class="ui-fields">
			<label class="ui-label">类型:</label>
			<select name="opertype" id="opertype" style="width: 100px" >
				<option value="-99" selected="selected">--请选择--</option>
				<option value="0">入库</option>
				<option value="1">出库</option>
			</select>
			<label class="ui-label">仓库:</label>
			<select  class="easyui-combobox"   name="warehouseid" id="warehouseid"  style="width:100px;">
			</select>
			<label class="ui-label">时间阶段:</label>
			<input name="begintime" id="begintime" type="text" maxlength="" class="easyui-datetimebox" >
			-
			<input name="endtime" id="endtime" type="text" maxlength="" class="easyui-datetimebox" >

			<label class="ui-label">型号:</label>
			<select  class="easyui-combobox"  name="goodskindid" id="goodskindid" style="width:100px;" >
			</select>
			<label class="ui-label">出/入库人:</label>
			<select  class="easyui-combobox"   name="peopleid" id="peopleid" style="width:100px;" >
			</select>

	    </p>
	    <a href="#" id="btn-search" class="easyui-linkbutton" iconCls="icon-search">查询</a>
      </form>  
     </div> 
     <!--  Search panel end -->

     <!-- Data List -->
     <div region="center" border="false" >
     <table id="data-list"></table>
	 </div>
	 
     <!-- Edit Win&Form -->
     <div id="edit-win" class="easyui-dialog" title="码单" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:910px; height: 600px;">
     	<form id="editForm" class="ui-form" method="post">  
     		 <input class="hidden" name="id" >
     		 <div class="ui-edit">
		     	   <div class="ftitle"></div>
					<div>
						<label>类型:</label>
						<select name="opertype" style="width: 100px">
							<option value="0" selected="selected">入库</option>
							<option value="1">出库</option>
						</select>
						<label>仓库:</label>
						<select class="easyui-combobox" name="warehouseid" id="formwarehouseid" style="width: 100px"></select>
						<label>时间:</label>
						<input name="createtime" type="text" maxlength="" class="easyui-datetimebox" missingMessage="请填写创建时间">
						<br/>
						<label>买家:</label>
						<select class="easyui-combobox" name="peopleid" id="formpeopleid" style="width: 100px">
						</select>
						<label>型号:</label>
						<select class="easyui-combobox" name="goodskindid" id="formgoodskindid" style="width: 100px"></select>
						<label>件数:</label>
						<input name="nums" type="text" maxlength="" class="easyui-numberbox"  data-options="required:true" missingMessage="请填写件数" style="width: 100px">
						<%--<label>状态</label>--%>
						<%--<input name="status" type="text" maxlength="" class="easyui-numberbox"  missingMessage="请填写状态(暂时无)" style="width: 30px">--%>
					</div>

					<div style="margin-top: 10px; padding-top: 5px;  border-top:1px solid #ccc; ">
						<label>重量格式:</label>
							<select id="moneyformat" name="moneyformat" style="width: 100px">
								<option value="0" selected="selected">五位数</option>
								<option value="1">四位数</option>
							</select>
						<br/><br/>
						<input id="details" name="details" type="hidden" >
						<div id="divlistblock" style=" width: 100%; height: 600px ;">

							<div name="divnuminputblock" class="blockdiv">
								<input name="numinput" type="text" class="blockdiv-input">
								<input name="numinput" type="text" class="blockdiv-input">
								<input name="numinput" type="text" class="blockdiv-input">
								<input name="numinput" type="text" class="blockdiv-input">
								<input name="numinput" type="text" class="blockdiv-input">
							</div>




						</div>
					</div>
					<div>
						<label>备注</label><br/>
						<input name="remark" type="text" maxlength="500" class="easyui-validatebox" data-options="" missingMessage="请填写备注">
						<textarea style="width: 100%;height: 50px " ></textarea>

					</div>
  			</div>
     	</form>
  	 </div>
  	 <script type="text/javascript" src="<%=basePath%>/view/scott/t_records/page-tRecords.js"></script>
  </body>
</html>