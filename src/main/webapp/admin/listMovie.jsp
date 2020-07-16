<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/14
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>电影信息管理</title>
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
</head>

<body>
<div class="dvcontent">

    <div>
        <!--tab start-->
        <div class="tabs" style="margin: 30px;">
            <div class="hd">
                <ul>
                    <li class="on" style="box-sizing: initial;-webkit-box-sizing: initial;">查看电影信息</li>
                    <li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">添加电影</li>
                </ul>
            </div>
            <div class="bd">
                <ul id="show" style="display: block;padding: 20px;">
                    <li>
                        <!--分页显示角色信息 start-->
                        <div id="dv1">
                            <table class="table" id="tbRecord">
                                <thead>
                                <tr>
                                    <th>电影编号</th>
                                    <th>电影中文名称</th>
                                    <th>电影英文名称</th>
                                    <th>电影分类</th>
                                    <th>电影时长</th>
                                    <th>上映时间</th>
                                    <th>简介</th>
                                    <th>海报</th>
                                    <th>人员</th>
                                    <th>编辑</th>
                                    <th>删除</th>
                                </tr>
                                </thead>

                                <tbody id="showMovie">


                                </tbody>

                            </table>
                        </div>
                        <!--分页显示角色信息 end-->
                    </li>
                </ul>
                <ul id="add" class="theme-popbod dform" style="display: none;">
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
                                            <form id="addmovie" class="am-form am-form-horizontal" action="addMovie"
                                                  method="post" enctype="multipart/form-data">

                                                <div class="am-form-group">
                                                    <label for="mnamee" class="am-u-sm-3 am-form-label">
                                                        电影名称</label>
                                                    <div class="am-u-sm-9">
                                                        <input type="text" id="mnamec" required
                                                               placeholder="中文名称" name="mnamec">
                                                        <input type="text" id="mnamee" required
                                                               placeholder="英文名称" name="mnamee">
                                                        <small>10字以内...</small>
                                                    </div>
                                                </div>
                                                <div class="am-form-group">
                                                    <label for="mnamee" class="am-u-sm-3 am-form-label">
                                                        电影分类</label>
                                                    <div class="am-u-sm-9">
                                                        <input type="text" id="msort" required
                                                               placeholder="类别" name="msort">
                                                        <small>10字以内...</small>
                                                    </div>
                                                </div>
                                                <div class="am-form-group">
                                                    <label for="user-name" class="am-u-sm-3 am-form-label">
                                                        电影时长</label>
                                                    <div class="am-u-sm-9">
                                                        <input type="text" id="mleng" required
                                                               placeholder="时长(分钟)" name="mleng">
                                                    </div>
                                                </div>
                                                <div class="am-form-group">
                                                    <label for="user-name" class="am-u-sm-3 am-form-label">
                                                        上映时间</label>
                                                    <div class="am-u-sm-9">
                                                        <input type="date" name="uptime" id="uptime">
                                                    </div>
                                                </div>
                                                <div class="am-form-group">
                                                    <label for="user-name" class="am-u-sm-3 am-form-label">
                                                        电影简介</label>
                                                    <div class="am-u-sm-9">
                                                        <textarea placeholder="电影简介" requireds
                                                                  name="details" id="details"></textarea>
                                                    </div>
                                                </div>
                                                <div class="am-form-group">
                                                    <label for="user-name" class="am-u-sm-3 am-form-label">
                                                        海报</label>
                                                    <div class="am-u-sm-9">
                                                        <input type="file" name="doc" id="doc" required>
                                                        <img src="#" width="150" height="150" id="imgs"/>
                                                        <input type="hidden" name="photo" id="photo">
                                                    </div>
                                                </div>
                                                <div class="am-form-group">
                                                    <label for="user-name" class="am-u-sm-3 am-form-label">
                                                        人员</label>
                                                    <div class="am-u-sm-9" id="tj">
                                                        <select style="color:blue;" id="dy" name="ry[0]">

                                                        </select>
                                                        <select id="yy" name="ry[1]">

                                                        </select>
                                                    </div>
                                                    <div class="am-u-sm-9">
                                                        <input type="button" id="btn" value="添加">
                                                    </div>
                                                </div>

                                                <div class="am-form-group">
                                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                                        <input type="submit" class="am-btn am-btn-success"
                                                               value="添加电影"/>
                                                        <input onclick='btn_add()' type="button"
                                                               class="am-btn am-btn-success"
                                                               value="添加电影"/>
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
                    <form id="updatemovie" class="am-form am-form-horizontal" action="updateMovie"
                          method="post" enctype="multipart/form-data">

                        <div class="am-form-group">
                            <label for="mnamee" class="am-u-sm-3 am-form-label">
                                电影名称</label>
                            <div class="am-u-sm-9">
                                <input type="text" id="mnamec1" required
                                       placeholder="中文名称" name="mnamec">
                                <input type="text" id="mnamee1" required
                                       placeholder="英文名称" name="mnamee">
                                <small>10字以内...</small>
                            </div>
                        </div>
                        <div class="am-form-group">
                            <label for="mnamee" class="am-u-sm-3 am-form-label">
                                电影分类</label>
                            <div class="am-u-sm-9">
                                <input type="text" id="msort1" required
                                       placeholder="类别" name="msort">
                                <small>10字以内...</small>
                            </div>
                        </div>
                        <div class="am-form-group">
                            <label for="user-name" class="am-u-sm-3 am-form-label">
                                电影时长</label>
                            <div class="am-u-sm-9">
                                <input type="text" id="mleng1" required
                                       placeholder="时长(分钟)" name="mleng">
                            </div>
                        </div>
                        <div class="am-form-group">
                            <label for="user-name" class="am-u-sm-3 am-form-label">
                                上映时间</label>
                            <div class="am-u-sm-9">
                                <input type="date" name="uptime" id="uptime1">
                            </div>
                        </div>
                        <div class="am-form-group">
                            <label for="user-name" class="am-u-sm-3 am-form-label">
                                电影简介</label>
                            <div class="am-u-sm-9">
                                                        <textarea placeholder="电影简介" requireds
                                                                  name="details" id="details1"></textarea>
                            </div>
                        </div>
                        <div class="am-form-group">
                            <label for="user-name" class="am-u-sm-3 am-form-label">
                                海报</label>
                            <div class="am-u-sm-9">
                                <input type="file" name="doc" id="doc1" required>
                                <img src="#" width="150" height="150" id="imgs1"/>
                                <input type="hidden" name="photo" id="photo1">
                            </div>
                        </div>
                        <div class="am-form-group">
                            <label for="user-name" class="am-u-sm-3 am-form-label">
                                人员</label>
                            <div class="am-u-sm-9" id="tj1">
                                <select style="color:blue;" id="dy1" name="ry[0]">

                                </select>
                                <select id="yy1" name="ry[1]">

                                </select>
                            </div>
                            <div class="am-u-sm-9">
                                <input type="button" id="btn1" value="添加">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <div class="am-u-sm-9 am-u-sm-push-3">
                                <input type="submit" class="am-btn am-btn-success"
                                       value="添加电影"/>
                                <input onclick='btn_add()' type="button"
                                       class="am-btn am-btn-success"
                                       value="添加电影"/>
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
    <script src="js/ajaxfileupload.js"></script>
    <script>

        var num = 2;
        var num1= 2;
        $(function () {
            $("#btn").click(function () {
                $("#tj").append($("#yy").clone().attr("name", "ry[" + num + "]"))
                num++;
            })
            $("#btn1").click(function () {
                $("#tj1").append($("#yy1").clone().attr("name", "ry[" + num1 + "]"))
                num1++;
            })
            showyy();
            $(".tabs").slide({trigger: "click"});
            $("#doc").change(function (e) {
                var imgBox = e.target;
//               uploadImg($('#bcd'), imgBox)
                var file = imgBox.files[0];
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

                }
//                $.ajaxFileUpload({
//                    type: "post",
//                    url: "addfileMovie",
//                    secureuri: false,//一般设置为fals
////                    cache:false,
//                    fileElementId: 'doc',
//                    dataType: "JSON",
//                    success: function (data, status) {
//                        var jsonObj = $.parseJSON(data.replace(/<.*?>/ig,""));
//                        $("#photo").val(jsonObj);
//
//
//                    },
//                    error: function (data, status, e) {
//                        alert("e")
//                    }
//                });

            })
            $("#doc1").change(function (e) {
                var imgBox = e.target;
//               uploadImg($('#bcd'), imgBox)
                var file = imgBox.files[0];
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
                }

            })


            $(".tabs").slide({trigger: "click"});
            show();
        });

        function showyy() {
            $.ajax({
                url: "listActor",
                type: "post",
                dataType: "json",
                success: function (data) {
                    var jsonobj = eval("(" + data + ")");
                    for (var i = 0; i < jsonobj.length; i++) {
                        if (jsonobj[i].acsort == "演员") {
                            $("#yy").append("<option value='" + jsonobj[i].acid + "'>" + jsonobj[i].acname + "</option>")
                        }
                        if (jsonobj[i].acsort == "导演") {
                            $("#dy").append("<option value='" + jsonobj[i].acid + "'>" + jsonobj[i].acname + "</option>")
                        }
                    }
                }
            })
        }

        function showyy1() {
            $.ajax({
                url: "listActor",
                type: "post",
                dataType: "json",
                success: function (data) {
                    var jsonobj = eval("(" + data + ")");
                    for (var i = 0; i < jsonobj.length; i++) {
                        if (jsonobj[i].acsort == "演员") {
                            $("#yy1").append("<option value='" + jsonobj[i].acid + "'>" + jsonobj[i].acname + "</option>")
                        }
                        if (jsonobj[i].acsort == "导演") {
                            $("#dy1").append("<option value='" + jsonobj[i].acid + "'>" + jsonobj[i].acname + "</option>")
                        }
                    }
                }
            })
        }

        function show() {
            $("#showMovie").empty();
            $.ajax({
                url: "listMovie",
                type: "post",
                dataType: "json",
                success: function (data) {
                    var jsonobj = eval("(" + data + ")");
                    for (var i = 0; i < jsonobj.length; i++) {
                        var aa="";
                        var dy="";
                        for (var a = 0; a < jsonobj[i].arr.length; a++) {
                            if(jsonobj[i].arr[a].acsort=="演员"){
                                aa += jsonobj[i].arr[a].acname+" ";
                            }
                            if(jsonobj[i].arr[a].acsort=="导演"){
                                dy=jsonobj[i].arr[a].acname;
                            }
                        }
                        $("#showMovie").append("<tr>\n" +
                            "                                    <td>" + jsonobj[i].mid + "</td>\n" +
                            "                                    <td>" + jsonobj[i].mnamec + "</td>\n" +
                            "                                    <td>" + jsonobj[i].mnamee + "</td>\n" +
                            "                                    <td>" + jsonobj[i].msort + "</td>\n" +
                            "                                    <td>" + jsonobj[i].mleng + "</td>\n" +
                            "                                    <td>" + jsonobj[i].uptime + "</td>\n" +
                            "                                    <td>" + jsonobj[i].details + "</td>\n" +
                            "                                    <td><img src='" + jsonobj[i].photo + "' height='150px' width='150px'></td>\n" +
                            "                                    <td><span style='color:red '>"+dy+"</span><br>" + aa + "</lable></td>\n" +
                            "                                    <td class=\"edit\"><button onclick=\"btn_edit(" + jsonobj[i].mid + ")\"><i class=\"icon-edit bigger-120\"></i>编辑</button></td>\n" +
                            "                                    <td class=\"delete\"><button onclick=\"btn_delete(" + jsonobj[i].mid + ")\"><i class=\"icon-trash bigger-120\"></i>删除</button></td>\n" +
                            "                                </tr>")
                    }

                }


            })
        }

        var btn_edit = function (id) {
            showyy1();
            $("#light").css({display: "block"})
            $("#fade").css({display: "block"})
            $.ajax({
                type: "post",
                url: "editMovie",
                data: {mid: id},
                success: function (data) {
                    var jsonobj = eval("(" + data + ")");
                    $("#mid1").val(jsonobj.mid);
                    $("#mnamec1").val(jsonobj.mnamec);
                    $("#mnamee1").val(jsonobj.mnamee);
                    $("#msort1").val(jsonobj.msort);
                    $("#mleng1").val(jsonobj.mleng);
                    $("#uptime1").val(jsonobj.uptime);
                    $("#details1").val(jsonobj.details);
                    $("#photo1").val(jsonobj.photo);
                }
            });

        }
        var btn_delete = function (id) {
            $.jq_Confirm({
                message: "您确定要删除吗?",
                btnOkClick: function () {
                    $.ajax({
                        type: "post",
                        url: "deleteMovie",
                        data: {mid: id},
                        success: function (data) {
                            show();
                        }
                    });
                }
            });
        }
        var btn_add = function () {
            $.ajax({
                type: "post",
                url: "addMovie",
                dataType: "json",
                data: {
                    "mnamec": $("#mnamec").val(),
                    "mnamee": $("#mnamee").val(),
                    "msort": $("#msort").val(),
                    "mleng": $("#mleng").val(),
                    "uptime": $("#uptime").val(),
                    "details": $("#details").val(),
                    "photo": $("#photo").val()
                },
                success: function (data) {
                    $(location).attr("href", "www.baidu.com")
//                    $("#add").css(display,"none");
//                    $("#show").css( display,"block");
                }
            });
        }
    </script>

</div>
</body>

</html>