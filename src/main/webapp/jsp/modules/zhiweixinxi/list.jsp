<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
</head>

<body class="materialdesign">
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- Header top area start-->
    <div class="wrapper-pro">
		<%@ include file="../../static/sidebar.jsp"%>
        <!-- Header top area start-->
        <div class="content-inner-all">
			<%@ include file="../../static/headerTop.jsp"%>
            <!-- Header top area end-->
            <!-- Breadcome start-->
            <div class="breadcome-area mg-b-30 small-dn">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="breadcome-list shadow-reset">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="breadcome-heading">
                                          
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <ul class="breadcome-menu">
                                            <li><a href="${pageContext.request.contextPath}/index.jsp">主页</a> <span class="bread-slash">/</span>
                                            </li>
                                            <li><span class="bread-blod">职位信息管理</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Breadcome End-->
            <!-- Mobile Menu start -->
            <!-- Mobile Menu end -->
            <!-- Breadcome start-->

            <!-- Breadcome End-->
            <!-- Static Table Start -->
            <div class="data-table-area mg-b-15">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="sparkline13-list shadow-reset">
                                <div class="sparkline13-hd">
                                    <div class="main-sparkline13-hd">
                                        <h1>职位信息<span class="table-project-n">列表</span></h1>
                                        <div class="sparkline13-outline-icon">
                                            <span class="sparkline13-collapse-link"><i class="fa fa-chevron-up"></i></span>
                                            <span><i class="fa fa-wrench"></i></span>
                                            <span class="sparkline13-collapse-close"><i class="fa fa-times"></i></span>
                                        </div>
                                    </div>
                                </div>
                               
                                <div class="sparkline13-graph">
                                    <div class="datatable-dashv1-list custom-datatable-overright">       
                                                                                                                                                        <label>职位名称</label>
                                        <input type="text" id="zhiweimingchengSearch">
                                                                                                                                                                                                                                    <label>职位类别</label>
                                        <select name="zhiweileibie" id="zhiweileibieSelect">
											                                        </select>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         <button type="button" class="btn btn-custon-four btn-primary btn-sm" onclick="search()">查询</button>
                                         <button type="button" class="btn btn-custon-four btn-success btn-sm 新增" onclick="add()">添加</button>
                                         <button type="button" class="btn btn-custon-four btn-danger btn-sm 删除" onclick="deleteMore()">删除</button>
										                                         <table id="table" data-toggle="table" data-resizable="true">
                                            <thead>
                                                <tr>
                                                    <th><input type="checkbox" onclick="chooseAll()"></th>
                                                																										<th><i id="zhiweimingchengIcon" onclick="sort('zhiweimingcheng')" class="fa fa-sort" aria-hidden="true"></i>职位名称</th>
																																																			<th><i id="zhiweileibieIcon" onclick="sort('zhiweileibie')" class="fa fa-sort" aria-hidden="true"></i>职位类别</th>
																																																																			<th>图片</th>
																																																																	<th><i id="zhaopinrenshuIcon" onclick="sort('zhaopinrenshu')" class="fa fa-sort" aria-hidden="true"></i>招聘人数</th>
																																																			<th><i id="xinzidaiyuIcon" onclick="sort('xinzidaiyu')" class="fa fa-sort" aria-hidden="true"></i>薪资待遇</th>
																																																																			<th>职位简介</th>
																																																																	<th><i id="faburiqiIcon" onclick="sort('faburiqi')" class="fa fa-sort" aria-hidden="true"></i>发布日期</th>
																																																			<th><i id="lianxirenIcon" onclick="sort('lianxiren')" class="fa fa-sort" aria-hidden="true"></i>联系人</th>
																																																			<th><i id="lianxifangshiIcon" onclick="sort('lianxifangshi')" class="fa fa-sort" aria-hidden="true"></i>联系方式</th>
																																																			<th><i id="qiyehaoIcon" onclick="sort('qiyehao')" class="fa fa-sort" aria-hidden="true"></i>企业号</th>
																																																			<th><i id="qiyemingchengIcon" onclick="sort('qiyemingcheng')" class="fa fa-sort" aria-hidden="true"></i>企业名称</th>
																																																			<th><i id="dizhiIcon" onclick="sort('dizhi')" class="fa fa-sort" aria-hidden="true"></i>地址</th>
																																					<th>
													操作
												</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                                    
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="fixed-table-pagination">
                                    	<div class="pull-left pagination-detail">
											<span class="pagination-info">当前第 1 页，共 1 页</span>
                                    		<span class="page-list">
                                    			<span class="btn-group dropup">
                                    				<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                    					<span class="page-size">10</span> 
                                    					<span class="caret"></span>
                                    				</button>
                                    				<ul class="dropdown-menu" role="menu">
                                    					<li role="menuitem" class="active">
                                    						<a onclick="changePageSize(10)" href="#">10</a>
                                    					</li>
                                    					<li role="menuitem">
                                    						<a onclick="changePageSize(25)" href="#">25</a>
                                    					</li>
                                                        <li role="menuitem">
                                    						<a onclick="changePageSize(50)" href="#">50</a>
                                    					</li>
                                                         <li role="menuitem">
                                    						<a onclick="changePageSize(100)" href="#">100</a>
                                    					</li>
                                    				</ul>
                                    			</span> 条 每页
                                    		</span>
                                    	</div>
                                    	<div class="pull-right pagination">
                                    		<ul class="pagination">
                                    			<li id="page-pre" class="page-pre">
                                    				<a href="#" onclick="pageNumChange('pre')">‹</a>
                                    			</li>
                                    			<li id="page-next" class="page-next">
                                    				<a href="#" onclick="pageNumChange('next')">›</a>
                                    			</li>
                                    		</ul>
                                    	</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Static Table End -->
        </div>
    </div>
    <!-- Footer Start-->
    <!-- Footer End-->
    <!-- Chat Box Start-->
    <!-- Chat Box End-->
		<%@ include file="../../static/foot.jsp"%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>
    <script>
        <%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>
		<%@ include file="../../static/getRoleButtons.js"%>
		<%@ include file="../../static/crossBtnControl.js"%>
        var tableName = "zhiweixinxi";
		var pageType = "list";
	  	var searchForm = { key: ""};
		var pageIndex = 1;
		var pageSize = 10;
		var totalPage = 0;
		var dataList = [];
		var sortColumn = '';
		var sortOrder= '';
		var ids = [];
		var checkAll = false;

					      							var zhiweileibieOptions = [];
			      				      				      				      				      				      				      				      				      				      				      	
		function init() {
			// 满足条件渲染提醒接口
																																																																																									}

		// 改变每页记录条数
		function changePageSize(num) {
            $('.page-size').html(num);
			pageSize = num;
			getDataList();
        }        
        //排序
		function sort(columnName){
			var iconId = '#'+columnName+'Icon'
			$('th i').attr('class','fa fa-sort');
			if(sortColumn == '' || sortColumn != columnName){
				sortColumn = columnName;
				sortOrder = 'asc';
				$(iconId).attr('class','fa fa-sort-asc');
			}
			if(sortColumn == columnName){
				if(sortOrder == 'asc'){
					sortOrder = 'desc';
					$(iconId).attr('class','fa fa-sort-desc');
				}else{
					sortOrder = 'asc';
					$(iconId).attr('class','fa fa-sort-asc');
				}
			}
			pageIndex = 1;
			getDataList();
		}   

		// 查询
		function search(){
			searchForm = { key: ""};
																	if($('#zhiweimingchengSearch').val() != null && $('#zhiweimingchengSearch').val() != ''){
						searchForm.zhiweimingcheng ="%" +  $('#zhiweimingchengSearch').val() + "%";
					}				
																										var zhiweileibieIndex = document.getElementById("zhiweileibieSelect").selectedIndex;
					var zhiweileibieOptions = document.getElementById("zhiweileibieSelect").options;
					var zhiweileibieSelectedOption = zhiweileibieOptions[zhiweileibieIndex]
					if(zhiweileibieSelectedOption.text != null &&  zhiweileibieSelectedOption.text != ''){
						searchForm.zhiweileibie = "%" + zhiweileibieSelectedOption.text + "%";
					}		
																																																																																					getDataList();
		}        
		// 获取数据列表
        function getDataList() {
			http("zhiweixinxi/page","GET",{
				page: pageIndex,
				limit: pageSize,
				sort: sortColumn,
				order: sortOrder,
																					zhiweimingcheng : searchForm.zhiweimingcheng,
																																	zhiweileibie : searchForm.zhiweileibie,
																																																																																																																							},(res)=>{
				if(res.code == 0){
					clear();
					dataList = res.data.list;
					totalPage = res.data.totalPage;
					//var tbody = document.getElementById('tbMain');
					for(var i = 0;i < dataList.length; i++){ //遍历一下表格数据  
						var trow = setDataRow(dataList[i]); //定义一个方法,返回tr数据 
						$('tbody').append(trow); 
					}
					pagination(); //渲染翻页组件
					getRoleButtons(); //删除没有权限的按钮
				}
			});
        }
		// 渲染表格数据
		function setDataRow(item){
			//创建行 
			var row = document.createElement('tr'); 
			row.setAttribute('class','useOnce');			
			// 创建 勾选框 列
			var checkbox = document.createElement('td');
			checkbox.innerHTML = "<input type='checkbox' name='chk' value=" + item.id +">";
			row.appendChild(checkbox);

							var zhiweimingchengCell  = document.createElement('td');

												 zhiweimingchengCell.innerHTML = item.zhiweimingcheng;

                
													row.appendChild(zhiweimingchengCell);
				
            				var zhiweileibieCell  = document.createElement('td');

												  zhiweileibieCell.innerHTML = item.zhiweileibie; 
				  
                
													row.appendChild(zhiweileibieCell);
				
            				var tupianCell  = document.createElement('td');

								                  var tupianImg = document.createElement('img');
				  tupianImg.setAttribute('src',item.tupian);
				  tupianImg.setAttribute('height','100px');
				  tupianImg.setAttribute('width','100px');
				  tupianCell.appendChild(tupianImg);

				
													row.appendChild(tupianCell);
				
            				var zhaopinrenshuCell  = document.createElement('td');

												 zhaopinrenshuCell.innerHTML = item.zhaopinrenshu;

                
													row.appendChild(zhaopinrenshuCell);
				
            				var xinzidaiyuCell  = document.createElement('td');

												 xinzidaiyuCell.innerHTML = item.xinzidaiyu;

                
													row.appendChild(xinzidaiyuCell);
				
            				var zhiweijianjieCell  = document.createElement('td');

												  if(item.zhiweijianjie != null && item.zhiweijianjie != "" && item.zhiweijianjie.length >= 11){
				  	zhiweijianjieCell.innerHTML = item.zhiweijianjie.substring(0, 10) + "..."; 
				  }else{
				  	zhiweijianjieCell.innerHTML = item.zhiweijianjie;
				  }

				
													row.appendChild(zhiweijianjieCell);
				
            				var faburiqiCell  = document.createElement('td');

												  faburiqiCell.innerHTML = item.faburiqi;

				
													row.appendChild(faburiqiCell);
				
            				var lianxirenCell  = document.createElement('td');

												 lianxirenCell.innerHTML = item.lianxiren;

                
													row.appendChild(lianxirenCell);
				
            				var lianxifangshiCell  = document.createElement('td');

												 lianxifangshiCell.innerHTML = item.lianxifangshi;

                
													row.appendChild(lianxifangshiCell);
				
            				var qiyehaoCell  = document.createElement('td');

												 qiyehaoCell.innerHTML = item.qiyehao;

                
													row.appendChild(qiyehaoCell);
				
            				var qiyemingchengCell  = document.createElement('td');

												 qiyemingchengCell.innerHTML = item.qiyemingcheng;

                
													row.appendChild(qiyemingchengCell);
				
            				var dizhiCell  = document.createElement('td');

												 dizhiCell.innerHTML = item.dizhi;

                
													row.appendChild(dizhiCell);
				
            			// 每行 按钮
			var btnGroup = document.createElement('td');
			

			//跨表按钮
			var crossBtn1 = document.createElement('button');
            crossBtn1.innerHTML = "职位申请"
			crossBtn1.setAttribute("type","button");
			crossBtn1.setAttribute("class","btn btn-custon-four btn-primary btn-sm");
			crossBtn1.setAttribute("onclick","crossTable(" + item.id + ",\"zhiweishenqing\")");
			if(crossBtnControl('职位申请') == true){
				btnGroup.appendChild(crossBtn1);
			}   

			//详情按钮
			var detailBtn = document.createElement('button');
			var detailAttr = "detail(" + item.id + ')';
			detailBtn.innerHTML = "查看";
			detailBtn.setAttribute("onclick",detailAttr);
			detailBtn.setAttribute("type","button");
			detailBtn.setAttribute("class","btn btn-custon-four btn-primary btn-sm 查看");
			btnGroup.appendChild(detailBtn);
			//编辑按钮
			var editBtn = document.createElement('button');
			var editAttr = 'edit(' +  item.id + ')';
			editBtn.setAttribute('onclick',editAttr);
			editBtn.setAttribute("type","button");
			editBtn.setAttribute("class","btn btn-custon-four btn-warning btn-sm 修改");
			editBtn.innerHTML = "修改";
			btnGroup.appendChild(editBtn);
			//删除按钮
			var deleteBtn = document.createElement('button');
			var deleteAttr = 'remove(' +  item.id + ')';
			deleteBtn.setAttribute('onclick',deleteAttr);
			deleteBtn.setAttribute("type","button");
			deleteBtn.setAttribute("class","btn btn-custon-four btn-danger btn-sm 删除");			
			deleteBtn.innerHTML = "删除";
			btnGroup.appendChild(deleteBtn);
			row.appendChild(btnGroup);
			return row;
		}
		// 翻页
        function pageNumChange(val) {
            if(val == 'pre') {
                pageIndex--;
            }else if(val == 'next'){
                pageIndex++;
            }else{
                pageIndex = val;
            }
			getDataList();
        }
		// 下载
		function download(url){
			window.open(url);
		}
		// 打开新窗口播放媒体
		function mediaPlay(url){
			//var url = baseUrl + "upload/" + fileName;
			window.open(url);
		}
		// 渲染翻页组件
		function pagination() {
			var beginIndex = pageIndex;
			var endIndex = pageIndex;
			var point = 4;
			//计算页码
			for(var i=0;i<3;i++){
				if(endIndex==totalPage){ break;}
				endIndex++;
				point--;
			}
			for(var i=0;i<3;i++){
				if(beginIndex==1){break;}
				beginIndex--;
				point--;
			}
			if(point>0){
				while (point>0){
					if(endIndex==totalPage){ break;}
					endIndex++;
					point--;
				}
				while (point>0){
					if(beginIndex==1){ break;}
					beginIndex--;
					point--
				}
			}
			// 是否显示 前一页 按钮
			if(pageIndex>1){
				$('#page-pre').show();
			}else{
				$('#page-pre').hide();
			}
			// 渲染页码按钮
			for(var i=beginIndex;i<=endIndex;i++){
				var pageNum = document.createElement('li');
				pageNum.setAttribute('onclick',"pageNumChange("+i+")");
				if(pageIndex == i){
					pageNum.setAttribute('class','page-number active useOnce');
				}else{
					pageNum.setAttribute('class','page-number useOnce');
				}
				var pageHref = document.createElement('a');
				pageHref.setAttribute('href','#');
				pageHref.innerHTML = i;
				pageNum.appendChild(pageHref);
				$("#page-next").before(pageNum);
			}
			// 是否显示 下一页 按钮
			if(pageIndex < totalPage){
				$('#page-next').show();
			}else{
				$('#page-next').hide();
			}
			var pageNumInfo = "当前第 "+ pageIndex + " 页，共 "+ totalPage + " 页";
			$('.pagination-info').html(pageNumInfo);
		}
		// 跳转到指定页
		function toThatPage(){
			//var index = document.getElementById('pageIndexInput').value;
			if(index<0 || index>totalPage){
				alert('请输入正确的页码');
			}else {
				pageNumChange(index);
			}
		}
		// 全选/全不选
		function chooseAll(){
			checkAll = !checkAll;
			var boxs = document.getElementsByName("chk");
			for(var i=0;i<boxs.length;i++){
				boxs[i].checked= checkAll;
			}
		}

		// 批量删除
		function deleteMore(){
			ids = []
			var boxs = document.getElementsByName("chk");
			for(var i=0;i<boxs.length;i++){
				if(boxs[i].checked == true){
					ids.push(boxs[i].value)
				}
			}
			if(ids.length == 0){
				alert('请勾选要删除的记录');
			}else{
				remove(ids);
			}
		}
		// 删除
        function remove(id) { 
            var mymessage = confirm("真的要删除吗？");
            if (mymessage == true) {
				var paramArray = [];
				if (id == ids){
					paramArray = id;
				}else{
					paramArray.push(id);
				}     
				httpJson("zhiweixinxi/delete","POST",paramArray,(res)=>{
					if(res.code == 0){
						alert('删除成功');
						getDataList();		
					}
				});        
            }
            else {
                alert("已取消操作");
            }
        }
		// 用户登出
        <%@ include file="../../static/logout.jsp"%>

		//修改
        function edit(id) {
            window.sessionStorage.setItem('id', id)
            window.location.href = "add-or-update.jsp"
        }
		//清除会重复渲染的节点
        function clear(){
        	var elements = document.getElementsByClassName('useOnce');
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
        }
		//添加
		function add(){
			window.location.href = "add-or-update.jsp"
		}
		//单列求和
		function getSum(colName){
			http("zhiweixinxi" + colName,"GET",{
				tableName: "zhiweixinxi",
				columnName: colName
			},(res)=>{
				if(res.code == 0){
					return res.data.sum;
				}
			});
		}

												
		// 查看详情
		function detail(id){
			window.sessionStorage.setItem("id", id);
			//window.sessionStorage.setItem("ifView", true);
			window.location.href = "info.jsp";
		}
		//跨表
		function crossTable(id,crossTableName){
			window.sessionStorage.setItem('crossTableId',id);
			window.sessionStorage.setItem('crossTableName',"zhiweixinxi");
			var url = "../"+crossTableName+"/add-or-update.jsp";
			window.location.href = url;
        }

						function zhiweileibieSelect(){
					//填充下拉框选项
					http("option/zhiweileibie/zhiweileibie","GET",{},(res)=>{
						if(res.code == 0){
							zhiweileibieOptions = res.data;
							var nullOption = document.createElement('option');
							nullOption.setAttribute('value','');
							var zhiweileibieSelect = document.getElementById('zhiweileibieSelect');
							zhiweileibieSelect.appendChild(nullOption);
							for(var i=0;i<zhiweileibieOptions.length;i++){
								var zhiweileibieOption = document.createElement('option');
								zhiweileibieOption.setAttribute('name','zhiweileibieOption');
								zhiweileibieOption.setAttribute('value',zhiweileibieOptions[i]);
								zhiweileibieOption.innerHTML = zhiweileibieOptions[i];
								zhiweileibieSelect.appendChild(zhiweileibieOption);
							}
						}
					});
				}
											
				
		$(document).ready(function() { 			
			$('.fixed-table-footer').remove();
			$('.no-records-found').hide();
			setMenu();
			init();
            getDataList();
					zhiweileibieSelect();
														<%@ include file="../../static/myInfo.js"%>
		});
    </script>

</body>

</html>
    