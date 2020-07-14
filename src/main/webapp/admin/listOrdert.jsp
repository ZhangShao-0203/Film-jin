<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/14
  Time: 23:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>订单信息管理</title>
    <link rel="stylesheet" />
    <link rel="stylesheet" href="css/Site.css" />
    <link rel="stylesheet" href="css/zy.all.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/amazeui.min.css" />
    <link rel="stylesheet" href="css/admin.css" />
</head>

<body>
<div class="dvcontent">

    <div>
        <!--tab start-->
        <div class="tabs">
            <div class="hd">
                <ul>
                    <li class="on" style="box-sizing: initial;-webkit-box-sizing: initial;">订单信息</li>
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
                                    <th>订单编号</th>
                                    <th>会员编号</th>
                                    <th>场次编号</th>
                                    <th>订票数量</th>
                                    <th>订票时间</th>
                                    <th>编辑</th>
                                    <th>删除</th>

                                </tr>
                                </thead>
                                <tbody id="showOrdert">
                                <tr>
                                    <td>1</td>
                                    <td>商品1</td>
                                    <td>肉类</td>
                                    <td>1000</td>
                                    <td>1000</td>
                                    <td class="edit"><button onclick="btn_edit(1)"><i class="icon-edit bigger-120"></i>编辑</button></td>
                                    <td class="delete"><button onclick="btn_delete(1)"><i class="icon-trash bigger-120"></i>删除</button></td>
                                </tr>
                                </tbody>

                            </table>
                        </div>
                        <!--分页显示角色信息 end-->
                    </li>
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

                }
            });
        }
    </script>

</div>
</body>

</html>
