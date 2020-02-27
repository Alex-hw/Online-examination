imgVer({
            el:'$("#imgVer")',
            width:'260',
            height:'116',
            img:[
                'images/ver.png',
                'images/ver-1.png',
                'images/ver-2.png',
                'images/ver-3.png'
            ],
            success:function () {
                //alert('执行登录函数');
                $(".login").css({
                    "left":"0",
                    "opacity":"1"
                });
                $(".verBox").css({
                    "left":"404px",
                    "opacity":"0"
                });
                $(".tips").html('你是不是不知道账号密码！？？？');
                $("#logo").attr("src",'images/login-err.png')
            },
            error:function () {
                //alert('错误什么都不执行')
            }
        });

function login(){
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    if(username==""){
        $.jGrowl("用户名不能为空！", { header: '提醒' });
    }else if(password==""){
        $.jGrowl("密码不能为空！", { header: '提醒' });
    }else{
    	document.getElementById('myform').submit();
//        AjaxFunc();
    }
}
function AjaxFunc()
{
//    var username = document.getElementById("username").value;
//    var password = document.getElementById("password").value;
    $.ajax({
        url: "<%=basePath%>user/check",
        type: "post",
        dataType: "json",
        async : true, //异步传输
        data : {username:$('#username').val(),password:$('#password').val()}, //传入序列化的表单对象
//        data: {"username": username,"password": password},
        success: function (data) {
            alert("xxx");
            alert(data);
        },
        error: function (xhr, type) {
            console.log(xhr);
        }
    });
}