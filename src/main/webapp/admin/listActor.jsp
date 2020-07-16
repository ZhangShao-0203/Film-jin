<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/13
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>演员信息管理</title>
    <link rel="stylesheet"/>
    <link rel="stylesheet" href="css/Site.css"/>
    <link rel="stylesheet" href="css/zy.all.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/amazeui.min.css"/>
    <link rel="stylesheet" href="css/admin.css"/>
    <style>
        #show tr td {
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

<body>
<div class="dvcontent">

    <div>
        <!--tab start-->
        <div class="tabs">
            <div class="hd">
                <ul style="">
                    <li style="box-sizing: initial;-webkit-box-sizing: initial;" class="on">查看演员</li>
                    <li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">添加演员</li>
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
                                    <th>演员id</th>
                                    <th>演员姓名</th>
                                    <th>演员照片</th>
                                    <th>类型</th>
                                    <th>编辑</th>
                                    <th>删除</th>
                                </tr>
                                </thead>
                                <tbody id="show">
                                </tbody>

                            </table>
                        </div>
                        <div class="fiter col-md-4" style="float: right">
                            <a id="which">第1页</a>/
                            <a id="all">第1页</a>
                            <button id="last" class="btn btn-success">上一页</button>
                            <button id="next" class="btn btn-success">下一页</button>
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
                                                  action="addActor" method="post" enctype="multipart/form-data"
                                                  >

                                                <div class="am-form-group">
                                                    <label for="user-name" class="am-u-sm-3 am-form-label">
                                                        演员名称</label>
                                                    <div class="am-u-sm-9">
                                                        <input type="text" id="user-name" required
                                                               placeholder="演员名称" name="acname">
                                                        <small>10字以内...</small>
                                                    </div>
                                                </div>
                                                <div class="am-form-group">
                                                    <label for="user-name" class="am-u-sm-3 am-form-label">
                                                        演员头像</label>
                                                    <div class="am-u-sm-9">
                                                        <input type="file" name="doc" id="chanpinzhutu" required>
                                                        <img src="#" width="80" height="80" id="imgs"/>
                                                    </div>
                                                </div>
                                                <div class="am-form-group">
                                                    <label for="user-name" class="am-u-sm-3 am-form-label">
                                                        演员类型</label>
                                                    <div class="am-u-sm-9">
                                                        <select class="textBox" name="acsort" id="state">
                                                            <option value="导演">导演</option>
                                                            <option value="演员">演员</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="am-form-group">
                                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                                        <input type="submit" class="am-btn am-btn-success"
                                                               value="添加演员"/>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <!-- content end -->
                        </div>
                        <!-- end-->
                    </div>

                </ul>

                <div id="light" class="white_content">
                    <form class="am-form am-form-horizontal"
                          action="updateActor" method="post" enctype="multipart/form-data"
                          >

                        <div class="am-form-group">
                            <label for="user-name" class="am-u-sm-3 am-form-label">
                                演员名称</label>
                            <div class="am-u-sm-9">
                                <input type="hidden" name="acid" value="" id="acid">
                                <input type="text" id="user-name1" required
                                       placeholder="演员名称" name="acname">
                                <small>10字以内...</small>
                            </div>
                        </div>
                        <div class="am-form-group">
                            <label for="user-name" class="am-u-sm-3 am-form-label">
                                演员头像</label>
                            <div class="am-u-sm-9">
                                <input type="file" name="doc" id="chanpinzhutu1" required>
                                <img src="#" width="80" height="80" id="imgs1"/>
                            </div>
                        </div>
                        <div class="am-form-group">
                            <label for="user-name" class="am-u-sm-3 am-form-label">
                                演员类型</label>
                            <div class="am-u-sm-9">
                                <select class="textBox" name="acsort" id="state1">
                                    <option value="导演">导演</option>
                                    <option value="演员">演员</option>
                                </select>
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
        $(function () {
            $("#chanpinzhutu").change(function (e) {
                var imgBox = e.target;
                uploadImg($('#bcd'), imgBox)

            })
            $("#chanpinzhutu1").change(function (e) {
                var imgBox = e.target;
                uploadImg1($('#bcd'), imgBox)
            })

            function uploadImg(element, tag) {
                var file = tag.files[0];
                var imgSrc;
                if (!/image\/\w+/.test(file.type)) {
                    alert("看清楚，这个需要图片！");
                    return false;
                }
                var reader = new FileReader();
                reader.readAsDataURL(file);
                reader.onload = function () {
                    imgSrc = this.result;
                    $("#imgs").attr("src", imgSrc);

                };
            }

            function uploadImg1(element, tag) {
                var file = tag.files[0];
                var imgSrc;
                if (!/image\/\w+/.test(file.type)) {
                    alert("看清楚，这个需要图片！");
                    return false;
                }
                var reader = new FileReader();
                reader.readAsDataURL(file);
                reader.onload = function () {
                    imgSrc = this.result;
                    $("#imgs1").attr("src", imgSrc);
                };
            }

            $(".tabs").slide({trigger: "click"});
            show();
        });

        function show() {
            $("#show").empty();
            $.ajax({
                url: "listActor",
                type: "post",
                dataType: "json",
                success: function (data) {
                    var jsonobj = eval("(" + data + ")");
                    for (var i = 0; i < jsonobj.length; i++) {
                        $("#show").append("<tr>\n" +
                            "                                    <td>" + jsonobj[i].acid + "</td>\n" +
                            "                                    <td>" + jsonobj[i].acname + "</td>\n" +
                            "                                    <td><img src='" + jsonobj[i].acphoto + "' width='150px' height='100px'></td>\n" +
                            "                                    <td>" + jsonobj[i].acsort + "</td>\n" +
                            "                                    <td class=\"edit\"><button onclick=\"btn_edit(" + jsonobj[i].acid + ")\"><i class=\"icon-edit bigger-120\"></i>编辑</button></td>\n" +
                            "                                    <td class=\"delete\"><button onclick=\"btn_delete(" + jsonobj[i].acid + ")\"><i class=\"icon-trash bigger-120\"></i>删除</button></td>\n" +
                            "                                </tr>")
                    }
                }
            })
        }

        var btn_edit = function (id) {
            $("#light").css({display: "block"})
            $("#fade").css({display: "block"})
            $.ajax({
                type: "post",
                url: "editActor",
                data: {acid: id},
                success: function (data) {
                    var jsonobj = eval("(" + data + ")");
                    $("#acid").val(jsonobj.acid);
                    $("#user-name1").val(jsonobj.acname);
                    $("#state option[value='"+jsonobj.acsort+"']").attr("selected", true)
                }
            });

        }

        var btn_delete = function (id) {
            $.jq_Confirm({
                message: "您确定要删除吗?",
                btnOkClick: function () {
                    $.ajax({
                        type: "post",
                        url: "deleteActor",
                        data: {acid: id},
                        success: function (data) {
                            show();
                        }
                    });
                }
            });
        }
    </script>

</div>
</body>

</html>
