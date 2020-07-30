<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!--导入函数类库  -->
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
    <!--JS测试  -->
    <script type="text/javascript">
        //让页面加载完成之后执行
        $(function(){
            //alert("aaa")
            //1.$.get  2.$.post  3.$.getJSON 只能获取json串  4.$.ajax 万能用法
            //1.语法  url地址,  data参数 , 回调函数    返回值类型
            //type类型:xml, html, script, json, text, _default 会自己解析返回值。
            //jQuery.get(url, [data], [callback], [type])   一般都是json串
            $.get("/findAjax",function(data){
                //1.获取返回值信息,之后循环遍历,之后将每个数据获取之后 拼接到table中即可
                //关于ajax参数问题  第一个参数 代表下标 ,第二个参数代表遍历的对象
                let trs = null;
                $(data).each(function(index,user){ //[user,user,user....]
                    //var user = data[index];
                    let id = user.id;	//从对象中获取属性信息
                    let name = user.name;
                    let age = user.age;
                    let sex = user.sex;
                    trs += "<tr align='center'><td>"+id+"</td><td>"+name+"</td><td>"+age+"</td><td>"+sex+"</td></tr>";
                });
                //将tr标签追加到table中
                $("#tb1").append(trs);
            });
            //2.利用$.ajax方法发起ajax请求
            /*
        $.ajax({
               type: "POST",
               url: "some.php",
               data: "name=John&location=Boston",
               success: function(msg){
             alert( "Data Saved: " + msg );
               }
            });
            */
        });
    </script>


    <title>您好Springboot</title>
</head>
<body>
<table id="tb1"  border="1px" width="65%" align="center">
    <tr>
        <td colspan="6" align="center"><h3>学生信息</h3></td>
    </tr>
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>年龄</th>
        <th>性别</th>
    </tr>
</table>
</body>
</html>
