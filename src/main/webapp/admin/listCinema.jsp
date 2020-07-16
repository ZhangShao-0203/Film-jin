<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/14
  Time: 23:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>影院信息管理</title>
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
                    <li class="on" style="box-sizing: initial;-webkit-box-sizing: initial;">影院信息</li>
                    <li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">添加电影院</li>
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
                                    <th>电影院编号</th>
                                    <th>电影院名称</th>
                                    <th>编辑</th>
                                    <th>删除</th>

                                </tr>
                                </thead>
                                <tbody id="showCinema">

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
                                                  action="addCinema" method="post">

                                                <div class="am-form-group">
                                                    <label for="name" class="am-u-sm-3 am-form-label">
                                                        电影院名称</label>
                                                    <div class="am-u-sm-9">
                                                        <input type="text" id="name" required
                                                               placeholder="电影院名称" name="cname">
                                                        <small>10字以内...</small>
                                                    </div>
                                                </div>
                                                <div class="am-form-group">
                                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                                        <input type="submit" class="am-btn am-btn-success" value="添加电影院" />
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <!-- content end -->
                        </div>
                        <!--添加 end-->
                    </div>
                </ul>

                <div id="light" class="white_content">
                    <form class="am-form am-form-horizontal"
                          action="updateCinema" method="post" enctype="multipart/form-data" >

                        <div class="am-form-group">
                            <label for="user-name" class="am-u-sm-3 am-form-label">
                                电影院名称</label>
                            <div class="am-u-sm-9">
                                <input type="hidden" name="cid" value="" id="cid">
                                <input type="text" id="user-name1" required
                                       placeholder="电影院名称" name="cname">
                                <small>10字以内...</small>
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
            showCinema();

        });

       function showCinema() {
           $("#showCinema").empty();
           $.ajax({
               url:"listCinema",
               type:"post",
               dataType:"json",
               success:function(data) {
                   var jsonObj=eval("("+data+")");
                   for (var i = 0; i <jsonObj.length ; i++) {
                       $("#showCinema").append("<tr>\n" +
                           "                                    <td>"+jsonObj[i].cid+"</td>\n" +
                           "                                    <td>"+jsonObj[i].cname+"</td>\n" +
                           "                                    <td class=\"edit\"><button onclick=\"btn_edit("+jsonObj[i].cid+")\"><i class=\"icon-edit bigger-120\"></i>编辑</button></td>\n" +
                           "                                    <td class=\"delete\"><button onclick=\"btn_delete("+jsonObj[i].cid+")\"><i class=\"icon-trash bigger-120\"></i>删除</button></td>\n" +
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
                url: "editCinema",
                data: {cid: id},
                success: function (data) {
                    var jsonobj = eval("(" + data + ")");
                    $("#cid").val(jsonobj.cid);
                    $("#user-name1").val(jsonobj.cname);
                }
            });

        }
        var btn_delete = function(id) {
            $.jq_Confirm({
                message: "您确定要删除吗?",
                btnOkClick: function() {
                    $.ajax({
                        type: "post",
                        url: "deleteCinema",
                        data: {cid:id },
                        success: function(data) {
                            showCinema();
                        }
                    });
                }
            });
        }
    </script>

</div>
</body>

</html>
