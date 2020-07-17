<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/17
  Time: 9:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>场次信息管理</title>
    <link rel="stylesheet" />
    <link rel="stylesheet" href="css/Site.css" />
    <link rel="stylesheet" href="css/zy.all.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/amazeui.min.css" />
    <link rel="stylesheet" href="css/admin.css" />
    <style>
        #showVip tr td {
            text-align: center;
        }

        #tbRecord tr th {
            text-align: center;
        }

        .black_overlay {
            display: none;
            position: absolute;
            top: 0%;
            left: 0%;
            width: 100%;
            height: 100%;
            background-color: black;
            z-index: 1001;
            -moz-opacity: 0.8;
            opacity: .80;
            filter: alpha(opacity=88);
        }

        .white_content {
            display: none;
            position: absolute;
            top: 25%;
            left: 33%;
            padding: 20px;
            border: 2px solid orange;
            background-color: white;
            z-index: 1002;
            overflow: auto;
        }
    </style>
</head>
<body>
<div class="dvcontent">

    <div>
        <!--tab start-->
        <div class="tabs">
            <div class="hd">
                <ul>
                    <li class="on" style="box-sizing: initial;-webkit-box-sizing: initial;">查看场次</li>
                    <li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">添加场次</li>
                </ul>
            </div>
            <div class="bd">
                <ul style="display: block;padding: 20px;">
                    <li>
                        <!--分页显示角色信息 start-->
                        <div id="dv1">
                            <table class="table" id="tbRecord">
                                <thead>
                                <tr>
                                    <th>编号</th>
                                    <th>场次名 </th>
                                    <th>密码</th>
                                    <th>电话</th>
                                    <th>修改</th>
                                    <th>删除</th>
                                </tr>
                                </thead>
                                <tbody id="showVip">

                                </tbody>

                            </table>
                        </div>
                        <!--分页显示角色信息 end-->
                    </li>
                </ul>
                <ul class="theme-popbod dform" style="display: none;">
                    <div class="am-cf admin-main" style="padding-top: 0px;">
                        <!-- content start -->

                        <div class="am-cf admin-main" style="padding-top: 0px;">
                            <!-- content start -->
                            <div class="admin-content">
                                <div class="admin-content-body">

                                    <div class="am-g">
                                        <div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">

                                        </div>
                                        <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4"
                                             style="padding-top: 30px;">
                                            <form class="am-form am-form-horizontal"
                                                  action="addVip" method="post">

                                                <div class="am-form-group">
                                                    <label for="user-name" class="am-u-sm-3 am-form-label">
                                                        姓名 / Name </label>
                                                    <div class="am-u-sm-9">
                                                        <input type="text" id="user-name" required
                                                               placeholder="姓名 / Name" name="vname">
                                                    </div>
                                                </div>
                                                <div class="am-form-group">
                                                    <label for="user-name" class="am-u-sm-3 am-form-label">
                                                        密码 / Pass </label>
                                                    <div class="am-u-sm-9">
                                                        <input type="text" id="user-pass" required
                                                               placeholder="密码 / Pass" name="vpass">
                                                    </div>
                                                </div>
                                                <div class="am-form-group">
                                                    <label for="user-name" class="am-u-sm-3 am-form-label">
                                                        联系电话 / phone </label>
                                                    <div class="am-u-sm-9">
                                                        <input type="tel" id="user-phone" required
                                                               placeholder="请输入联系电话" name="tel"/>
                                                        <small>联系电话...</small>
                                                    </div>
                                                </div>
                                                <div class="am-form-group">
                                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                                        <input type="submit" class="am-btn am-btn-success"
                                                               value="添加用户"/>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <!-- content end -->
                        </div>
                        <!--添加角色 end-->
                    </div>
                </ul>

                <div id="light" class="white_content">
                    <form class="am-form am-form-horizontal"
                          action="updateVip" method="post" enctype="multipart/form-data" >

                        <div class="am-form-group">
                            <label for="user-name" class="am-u-sm-3 am-form-label">
                                会员名称</label>
                            <div class="am-u-sm-9">
                                <input type="hidden" name="vid" value="" id="vid">
                                <input type="text" id="user-name1" required
                                       placeholder="会员名称" name="vname">
                                <small>10字以内...</small>
                            </div>
                        </div>
                        <div class="am-form-group">
                            <label for="user-name" class="am-u-sm-3 am-form-label">
                                会员密码</label>
                            <div class="am-u-sm-9">
                                <input type="hidden" name="vpass" value="" id="vpass">
                                <input type="text" id="user-pass1" required
                                       placeholder="会员密码" name="vpass">
                            </div>
                        </div>
                        <div class="am-form-group">
                            <label for="user-name" class="am-u-sm-3 am-form-label">
                                会员电话</label>
                            <div class="am-u-sm-9">
                                <input type="hidden" name="tel" value="" id="tel">
                                <input type="text" id="user-tel1" required
                                       placeholder="会员电话" name="tel">
                            </div>
                        </div>
                        <div class="am-form-group">
                            <div class="am-u-sm-9 am-u-sm-push-3">
                                <input type="submit" class="am-btn am-btn-success"
                                       value="修改提交"/>
                            </div>
                        </div>
                    </form>
                    <a href="javascript:void(0)"
                       onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">点这里关闭本窗口</a>
                </div>
                <div id="fade" class="black_overlay"></div>

            </div>
        </div>
        <!--tab end-->
    </div>


    <script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="js/plugs/Jqueryplugs.js" type="text/javascript"></script>
    <script src="js/_layout.js"></script>
    <script src="js/plugs/jquery.SuperSlide.source.js"></script>
    <script>
        var num = 1;
        $(function() {

            $(".tabs").slide({ trigger: "click" });
            showVip();
        });
        function showVip(){
            $("#showVip").empty();
            $.ajax({
                url:"listVip",
                type:"post",
                data:{},
                dataType:"json",
                success:function(data) {
                    var jsonObj=eval("("+data+")");
                    for (var i = 0; i <jsonObj.length ; i++) {
                        $("#showVip").append("<tr>\n" +
                            "                                    <td>"+jsonObj[i].vid+"</td>\n" +
                            "                                    <td>"+jsonObj[i].vname+"</td>\n" +
                            "                                    <td>"+jsonObj[i].vpass+"</td>\n" +
                            "                                    <td>"+jsonObj[i].tel+"</td>\n" +
                            "                                    <td class=\"edit\"><button onclick=\"btn_edit("+jsonObj[i].vid+")\"><i class=\"icon-edit bigger-120\"></i>编辑</button></td>\n" +
                            "                                    <td class=\"delete\"><button onclick=\"btn_delete("+jsonObj[i].vid+")\"><i class=\"icon-trash bigger-120\"></i>删除</button></td>\n" +
                            "                                </tr>")
                    }
                }
            })
        }

        var btn_save = function() {
            var pid = $("#RawMaterialsTypePageId  option:selected").val();
            var name = $("#RawMaterialsTypeName").val();
            var desc = $("#RawMaterialsTypeDescription").val();
            var ramark = $("#Ramark").val();
            $.ajax({
                type: "post",
                url: "/RawMaterialsType/AddRawMaterialsType",
                data: { name: name, pid: pid, desc: desc, ramark: ramark },
                success: function(data) {
                    if(data > 0) {
                        $.jq_Alert({
                            message: "添加成功",
                            btnOktext: "确认",
                            dialogModal: true,
                            btnOkClick: function() {
                                //$("#RawMaterialsTypeName").val("");
                                //$("#RawMaterialsTypeDescription").val("");
                                //$("#Ramark").val("");
                                //page1();
                                location.reload();

                            }
                        });
                    }
                }
            });
            alert(t);
        }

        var btn_edit = function (id) {
            $("#light").css({display: "block"})
            $("#fade").css({display: "block"})
            $.ajax({
                type: "post",
                url: "editVip",
                data: {vid: id},
                success: function (data) {
                    var jsonobj = eval("(" + data + ")");
                    $("#vid").val(jsonobj.vid);
                    $("#user-name1").val(jsonobj.vname);
                    $("#user-pass1").val(jsonobj.vpass);
                    $("#user-tel1").val(jsonobj.tel);
                }
            });

        }
        var btn_delete = function(id) {
            $.jq_Confirm({
                message: "您确定要删除吗?",
                btnOkClick: function() {
                    $.ajax({
                        type: "post",
                        url: "deleteVip",
                        data: {vid:id },
                        success: function(data) {
                            showVip();
                        }
                    });
                }
            });
        }
    </script>
</div>
</body>

</html>
