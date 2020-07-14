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
    <title></title>
    <link rel="stylesheet" />
    <link rel="stylesheet" href="css/Site.css" />
    <link rel="stylesheet" href="css/zy.all.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/amazeui.min.css" />
    <link rel="stylesheet" href="css/admin.css" />
    <style>
        /*#show tr td{*/
            /*text-align: center;*/
        /*}*/
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
                                <tbody id="show" >
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
                                                  action="addActor" method="post" enctype="multipart/form-data">

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
                                                        <input type="file" name="doc" id="chanpinzhutu">
                                                        <img src="#" width="80" height="80" id="imgs"/>
                                                    </div>
                                                </div>
                                                <div class="am-form-group">
                                                    <label for="user-name" class="am-u-sm-3 am-form-label">
                                                        演员类型</label>
                                                    <div class="am-u-sm-9">
                                                        <select class="textBox"  name="acsort" id="state">
                                                            <option value="0">--请选择--</option>
                                                            <option value="导演">导演</option>
                                                            <option value="演员">演员</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="am-form-group">
                                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                                        <input type="submit" class="am-btn am-btn-success" value="添加分类" />
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
                </ul>
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
            $("#chanpinzhutu").change(function (e) {
                var imgBox = e.target;
                uploadImg($('#bcd'), imgBox)

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
            $.ajax({
                url:"listActor",
                type:"post",
                dataType:"json",
                success:function (data) {
                    var jsonobj=eval("("+data+")");
                    for (var i=0;i<jsonobj.length;i++){
                        $("#show").append("<tr>\n" +
                            "                                    <td>"+jsonobj[i].acid+"</td>\n" +
                            "                                    <td>"+jsonobj[i].acname+"</td>\n" +
                            "                                    <td>"+jsonobj[i].acphoto+"</td>\n" +
                            "                                    <td>"+jsonobj[i].acsort+"</td>\n" +
                            "                                    <td>编辑</td>\n" +
                            "                                    <td>删除</td>\n" +
                            "                                </tr>")
                    }
                }
            })
            $(".tabs").slide({ trigger: "click" });

        });


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

        var btn_edit = function(id) {
            $.jq_Panel({
                url: "/RawMaterialsType/EditRawMaterialsType?id=" + id,
                title: "编辑分类",
                dialogModal: true,
                iframeWidth: 500,
                iframeHeight: 400
            });
        }
        var btn_delete = function(id) {
            $.jq_Confirm({
                message: "您确定要删除吗?",
                btnOkClick: function() {
                    $.ajax({
                        type: "post",
                        url: "/RawMaterialsType/DeleteRawMaterialsType",
                        data: { id: id },
                        success: function(data) {
                            if(data > 0) {
                                $.jq_Alert({
                                    message: "删除成功",
                                    btnOkClick: function() {
                                        page1();
                                    }
                                });
                            }
                        }
                    });
                }
            });
        }
    </script>

</div>
</body>

</html>
