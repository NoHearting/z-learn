
//检查用户是否登录
function  checkLogin() {

    $.get("/z/user/checkLogin",{},function (data) {

        if(data.status == "ERROR"){
            var questUrl = "/z/pages/login";
            $("#login").attr("href",questUrl).text("登录");
            $("#loginStatus").text("未登录");
        }else{
            var questUrl = "/z/pages/logout";
            $("#login").attr("href",questUrl).text("注销");
            $("#loginStatus").text(data.obj.username);
        }

    });
}



//将时间戳转换成正常时间格式
function timestampToTime(timestamp) {
    var date = new Date(timestamp);//时间戳为10位需*1000，时间戳为13位的话不需乘1000
    var Y = date.getFullYear() + '-';
    var M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
    var D = date.getDate() + ' ';
    var h = date.getHours() + ':';
    var m = date.getMinutes() + ':';
    var s = date.getSeconds();
    return Y+M+D+h+m+s;
}


/**
 *
 * “所有博客”页面的显示
 * 加载所有博客的信息和页码选择器
 * @param searchValue
 * @param currPage
 */
function loadBlog(searchValue,currPage) {
    $.post("/z/blog/selectBlogs",{searchValue:searchValue,currPage:currPage,pageCount:10},function (pageBean) {
        //设置页码显示信息
        var lis = "";
        var firstPage;
        var prePage = pageBean.currentPage-1;
        if(prePage<1){
            prePage = 1;
        }
        if(currPage!=1){
            firstPage = '<li onclick="javascript:loadBlog('+searchValue+','+prePage+')" ><a href="#" class="btn-navs">PRE</a></li>';
        }else{
            firstPage = '<li class="disabled"><a href="#" class="btn-navs">PRE</a></li>';
        }
        lis += firstPage;

        //确定页码的开始和结束
        var begin;
        var end;
        if(pageBean.totalPage<5){
            begin = 1;
            end = pageBean.totalPage;
        }else{
            begin = pageBean.currentPage-1;
            end = pageBean.currentPage+2;
            if(begin<1){
                begin = 1;
                end = begin+3;
            }
            if(end>pageBean.totalPage){
                end = pageBean.totalPage;
                begin = end-3;
            }
        }
        var li = "";
        for(var i = begin;i<=end;i++){
            if(pageBean.currentPage==i){
                li = '<li onclick="javascript:loadBlog('+searchValue+','+i+',)" class="active"><a href="#">'+i+'</a></li>';
            }else{
                li = '<li onclick="javascript:loadBlog('+searchValue+','+i+',)"><a href="#">'+i+'</a></li>';
            }
            lis += li;
        }
        var nextPage = pageBean.currentPage+1;
        if(nextPage>pageBean.totalPage){
            nextPage = pageBean.totalPage;
        }
        var lastPage = '<li onclick="javascript:loadBlog('+searchValue+','+nextPage+',)"><a href="#" class="btn-navs">NEXT</a></li>'
        lis += lastPage;
        $("#page-select").html(lis);

        var blogContainer = $("#blog-container");
        blogContainer.empty();
        for(var i = 0;i<pageBean.list.length;i++){
            var wTime = timestampToTime(pageBean.list[i].writeTime);
            var li =
                '<div class="course style4 text-ea0042 ">' +
                '    <div class="course-border border-f-e6f3ff border-ra4 clear-sub-columns transition-vline">\n' +
                '        <div class="course-content">' +
                '            <div class="text-wrap border-bt-e6f3ff">' +
                '                <h6 class="title"><a href="/z/pages/showBlog?bId='+pageBean.list[i].bId+'">'+pageBean.list[i].title+'</a></h6>' +
                '                   <p class="teacher"><a href="#">C++</a> <a href="#">Java</a></p>\n' +
                '            </div>' +
                '            <div class="wrap-rating-price">' +
                '                 <ul class="list meta-rate">\n' +
                '                     <li>'+
                '                          <ul class="list star-list">'+
                '                             <li><i class="far fa-star"></i></li>'+
                '                             <li><i class="far fa-star"></i></li>'+
                '                             <li><i class="far fa-star"></i></li>'+
                '                             <li><i class="far fa-star"></i></li>'+
                '                             <li><i class="far fa-star"></i></li>'+
                '                          </ul>'+
                '                        <span></span><span>5.0  (980) </span>'+
                '                     </li>'+
                '                     <li>\n' +
                '                         <span>'+wTime+'</span>\n' +
                '                     </li>\n' +
                '                     <li>\n' +
                '                         Views <span class="color-2ebd59">'+pageBean.list[i].readTimes+'</span>\n' +
                '                     </li>\n' +
                '                 </ul>\n' +
                '                 <span class="price">finish</span>\n' +
                '          </div>\n' +
                '      </div>\n' +
                '   </div>\n' +
                '</div>';
            blogContainer.append(li);
        }

    });

}



/**
 * 加载头部导航栏信息
 */
function  loadHeaderTab() {

    $.get("/z/question/selectQuestionsClassify",{},function (classify) {
        var firstItem = '<li class="active">\n' +
            '<a href="#">首页</a>\n' +
            '</li>';
        var headTab = $("#main-nav .menu");
        headTab.empty();
        headTab.append(firstItem);
        for(var i = 0;i<classify.length;i++){

            var nextItem = '<li><a href="#">'+classify[i].mainType+'</a>';
            if(classify[i].questionTags.length>0){
                nextItem += '<ul class="submenu">';
            }
            for(var j = 0;j<classify[i].questionTags.length;j++){
                nextItem += '<li><a href="/z/pages/language?initKey='+classify[i].questionTags[j].sId+'">'+classify[i].questionTags[j].subType+'</a></li>';
            }
            nextItem += '</ul></li>';
            headTab.append(nextItem);

        }
        headTab.append('<li >\n' +
            '                                        <a href="#">关于</a>\n' +
            '                                        <ul class="submenu">\n' +
            '                                            <li><a href="/z/pages/FAQs">常见问题</a></li>\n' +
            '                                            <li><a href="/z/pages/about-us">关于我们</a></li>\n' +
            '                                            <li class="item-has-child">\n' +
            '                                                <a href="#">SHOP</a>\n' +
            '                                                <ul class="submenu">\n' +
            '                                                    <li ><a href="shop.html">SHOP</a></li>\n' +
            '                                                    <li><a href="shop-single.html">SHOP SINGLE</a></li>\n' +
            '                                                </ul>\n' +
            '                                            </li>\n' +
            '                                        </ul>\n' +
            '                                    </li>');
    });
}