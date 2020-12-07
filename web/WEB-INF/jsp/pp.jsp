<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="com.itheima.po.Customer" %>
<%
    String path = request.getContextPath();
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>Home</title>
    <meta http-equiv=”Content-Type” content=”text/html; charset=UTF-8”>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <script type="text/javascript" src="<%=basePath%>/js/layui/layui.all.js"></script>
    <script type="text/javascript" src="<%=basePath%>/js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/js/layer/layer.js"></script>
    <link href="<%=basePath%>/js/layui/css/layui.css" rel="stylesheet" media="all">
    <style type="text/css">
        table {
            width: 90%;
            margin-left: 50px;
        }

        .layui-btn {
            display: inline-block;
            height: 38px;
            line-height: 38px;
            padding: 0 18px;
            background-color: #209fdf;
            color: #fff;
            white-space: nowrap;
            text-align: center;
            font-size: 14px;
            border: none;
            border-radius: 2px;
            cursor: pointer;
        }



    </style>
    <script language='javascript' type='text/javascript'>
        $(document).ready(
            function () {

                $('#delete_msg').delay(2000).hide(0);
                $('#add_msg').delay(2000).hide(0);
                $('#cha_msg').delay(2000).hide(0);


            }
        );
    </script>
</head>

<body>

<div id="oone">
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
        <legend>查询全部</legend>
    </fieldset>

    <form action="${pageContext.request.contextPath}/findAll" method="get">
        <input type="submit" value="点击查询全部学生信息" class="layui-btn" style="margin-left: 70px">
    </form>

</div>
<div id="ttwo">
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
        <legend>按学号查询</legend>
    </fieldset>

    <form action="${pageContext.request.contextPath}/findCustomerByStudent" method="get">
        <div class="layui-inline">
            <label class="layui-form-label">学号</label>
            <div class="layui-input-inline">
                <input type="tel" name="id" lay-verify="required|phone" autocomplete="off" class="layui-input ">
            </div>
        </div>
        <input type="submit" class="layui-btn" style="margin-left: 10px">
    </form>
    <div style="width: 80%;margin-left: 50px">
        <%
            if (request.getAttribute("customer") != null) {
                Customer i = (Customer) request.getAttribute("customer");
                out.print("<table lay-filter=\"demo\" id=\"atable\">\n" +
                        "    <thead>\n" +
                        "\n" +
                        "    <tr>\n" +
                        "        <th lay-data=\"{field:'nau'}\">学号</th>\n" +
                        "        <th lay-data=\"{field:'nsu'}\">姓名</th>\n" +
                        "        <th lay-data=\"{field:'ndu'}\">电话</th>\n" +
                        "        <th lay-data=\"{field:'nfu'}\">性别</th>\n" +
                        "        <th lay-data=\"{field:'ngu'}\">年龄</th>\n" +
                        "        <th lay-data=\"{field:'nuh'}\">学院</th>\n" +
                        "        <th lay-data=\"{field:'nku'}\">专业</th>\n" +
                        "        <th lay-data=\"{field:'nul'}\">班级</th>\n" +
                        "    </tr>\n" +
                        "    </thead>\n" +
                        "    <tbody>\n" +
                        "    <tr>");
                out.print("<td>" + i.getStudent_num() + "</td>\n" +
                        "        <td>" + i.getName() + "</td>\n" +
                        "        <td>" + i.getPhone_number() + "</td>\n" +
                        "        <td>" + i.getSex() + "</td>\n" +
                        "        <td>" + i.getYear() + "</td>\n" +
                        "        <td>" + i.getCollege_id() + "</td>\n" +
                        "        <td>" + i.getMajor_id() + "</td>\n" +
                        "        <td>" + i.getClass_id() + "</td>\n" +
                        "    </tr>\n" +
                        "    </tbody>\n" +
                        "</table>");
            }
        %>
    </div>
</div>
<div id="tthree">
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
        <legend>按学号删除</legend>
    </fieldset>

    <form action="${pageContext.request.contextPath}/delete" method="get">
        <div class="layui-inline">
            <label class="layui-form-label">学号</label>
            <div class="layui-input-inline">
                <input type="tel" name="id" lay-verify="required|phone" autocomplete="off" class="layui-input">
            </div>
        </div>
        <input type="submit" class="layui-btn" style="margin-left: 10px">
        <span style="margin-left: 30px" id="delete_msg">
            <%
                if (request.getAttribute("delete") != null) {
                    Boolean i = (Boolean) request.getAttribute("delete");
                    if (i) {
                        out.print("删除成功");
                    } else {
                        out.print("删除失败");
                    }
                }
            %>
        </span>
    </form>
</div>
<div id="ffour">
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
            <legend>新增学生</legend>
        </fieldset>


        <form action="${pageContext.request.contextPath}/addStudent" method="get" enctype=‘mutipart/form-data’>
            <%--      <input type="text" name="id">--%>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">学号</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="student_num" lay-verify="required|phone" autocomplete="off"
                               class="layui-input">
                    </div>

                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">姓名</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="name" lay-verify="required|phone" autocomplete="off"
                               class="layui-input">
                    </div>
                </div>

                <div class="layui-inline">
                    <label class="layui-form-label">电话</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="phone_number" lay-verify="required|phone" autocomplete="off"
                               class="layui-input">
                    </div>
                </div>

                <div class="layui-inline">
                    <label class="layui-form-label">性别</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="sex" lay-verify="required|phone" autocomplete="off" class="layui-input">
                    </div>

                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">年龄</label>
                    <div class="layui-input-inline">
                        <%--<input type="tel" name="year" lay-verify="required|phone" autocomplete="off" class="layui-input">--%>
                        <input type="text" name="year" id="date" lay-verify="date" placeholder="yyyy-MM-dd"
                               autocomplete="off" class="layui-input">
                    </div>

                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">学院</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="college_id" lay-verify="required|phone" autocomplete="off"
                               class="layui-input">
                    </div>
                </div>

                <div class="layui-inline">
                    <label class="layui-form-label">专业</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="major_id" lay-verify="required|phone" autocomplete="off"
                               class="layui-input">
                    </div>
                </div>

                <div class="layui-inline">
                    <label class="layui-form-label">班级</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="class_id" lay-verify="required|phone" autocomplete="off"
                               class="layui-input">
                    </div>
                </div>
            </div>
                <center>
            <input type="submit" class="layui-btn" class="layui-btn" style="margin-left: 30px" value="提交新增">
                </center>
            <span style="margin-left: 30px" id="add_msg">
            <%
                if (request.getAttribute("addStudent") != null) {
                    int i = (int) request.getAttribute("addStudent");
                    if (i != 0) {
                        out.print("新增成功");
                    } else {
                        out.print("新增失败");
                    }
                }
            %>
        </span>
        </form>

</div>
<div id="ffive">
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
            <legend>修改学生</legend>
        </fieldset>


        <form action="${pageContext.request.contextPath}/change" method="get">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">学号(必填)</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="student_num" lay-verify="required|phone" autocomplete="off"
                               class="layui-input">
                    </div>

                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">姓名</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="name" lay-verify="required|phone" autocomplete="off"
                               class="layui-input">
                    </div>
                </div>

                <div class="layui-inline">
                    <label class="layui-form-label">电话</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="phone_number" lay-verify="required|phone" autocomplete="off"
                               class="layui-input">
                    </div>
                </div>

                <div class="layui-inline">
                    <label class="layui-form-label">性别</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="sex" lay-verify="required|phone" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">年龄</label>
                    <div class="layui-input-inline">
                        <%--<input type="tel" name="year" lay-verify="required|phone" autocomplete="off" class="layui-input">--%>
                        <input type="text" name="year" id="date1" lay-verify="date1" placeholder="yyyy-MM-dd"
                               autocomplete="off" class="layui-input">
                    </div>

                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">学院</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="college_id" lay-verify="required|phone" autocomplete="off"
                               class="layui-input">
                    </div>
                </div>

                <div class="layui-inline">
                    <label class="layui-form-label">专业</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="major_id" lay-verify="required|phone" autocomplete="off"
                               class="layui-input">
                    </div>
                </div>

                <div class="layui-inline">
                    <label class="layui-form-label">班级</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="class_id" lay-verify="required|phone" autocomplete="off"
                               class="layui-input">
                    </div>
                </div>
            </div>
            <center>
            <input type="submit" class="layui-btn" class="layui-btn" value="提交修改" style="margin-left: 30px;">
            </center>
            <span style="margin-left: 30px" id="cha_msg">
            <%
                if (request.getAttribute("change") != null) {
                    int i = (int) request.getAttribute("change");
                    if (i != 0) {
                        out.print("修改成功");
                    } else {
                        out.print("修改失败");
                    }
                }
            %>
        </span>
        </form>
    </div>
    <div style="height: 300px"></div>
<script>
    layui.table.init('demo', {
        limit: 10,
    });
    layui.jquery(this).addClass('layui-btn-disabled');
</script>

</body>
</html>
