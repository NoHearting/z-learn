//检查用户是否登录
function  checkLogin(url) {
    var path = url+"/user/checkLogin";
    $.get(path,{},function (data) {

        if(data == null || data == ""){
            var questUrl = url+"/pages/login";
            $("#login").attr("href",questUrl).text("登录");
            $("#loginStatus").text("未登录");
        }else{
            var questUrl = url+"/pages/logout";
            $("#login").attr("href",questUrl).text("注销");
            $("#loginStatus").text(data.username);
        }

    })
}