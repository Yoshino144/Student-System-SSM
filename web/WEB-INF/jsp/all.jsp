<%@ page import="com.itheima.po.Customer" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":"
                + request.getServerPort() + path + "/";
    %>
    <base href="<%=basePath%>>">
    <c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
    <meta charset="utf-8">
    <title>管理员管理</title>
    <script type="text/javascript" src="<%=basePath%>/js/layui/layui.all.js"></script>
    <script type="text/javascript" src="<%=basePath%>/js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/js/layer/layer.js"></script>
    <link href="<%=basePath%>/js/layui/css/layui.css" rel="stylesheet" media="all">
    <link href="<%=basePath%>/css/base.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        .layui-laypage .layui-laypage-curr .layui-laypage-em {
            position: absolute;
            left: -1px;
            top: -1px;
            padding: 1px;
            width: 100%;
            height: 100%;
            background-color:#bf7d7d;
        }
    </style>
</head>
<body>
<div id="dw">
    <div id="can" class="layui-anim layui-anim-up">
        <div id="ccan">
            <table lay-filter="demo" id="atable">
                <thead>
                    <tr>
                        <th lay-data="{field:'nu', sort:true}">学号</th>
                        <th lay-data="{field:'na', sort:true}">姓名</th>
                        <th lay-data="{field:'ph'}">电话</th>
                        <th lay-data="{field:'sex'}">性别</th>
                        <th lay-data="{field:'age', sort:true}">年龄</th>
                        <th lay-data="{field:'c'}">学院</th>
                        <th lay-data="{field:'m'}">专业</th>
                        <th lay-data="{field:'cl'}">班级</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Customer> list = (List<Customer>) request.getAttribute("all");
                        for (int i = 0; i < list.size(); i++) {
                            Customer clazz = (Customer) list.get(i);
                    %>
                    <tr>
                        <td><%=clazz.getStudent_num()%>
                        </td>
                        <td><%=clazz.getName()%>
                        </td>
                        <td><%=clazz.getPhone_number()%>
                        </td>
                        <td><%=clazz.getSex()%>
                        </td>
                        <td><%=clazz.getYear()%>
                        </td>
                        <td><%=clazz.getCollege_id()%>
                        </td>
                        <td><%=clazz.getMajor_id()%>
                        </td>
                        <td><%=clazz.getClass_id()%>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <script>
                layui.table.init('demo', {
                    limit: 10,
                    page: true,
                });
                layui.jquery(this).addClass('layui-btn-disabled');
            </script>
        </div>
    </div>
</div>

</body>
</html>
