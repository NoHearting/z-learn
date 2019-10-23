/**
 * 加载problem.jsp页面的所有问题显示和页码显示。当搜索框内有值时，会进行模糊查询
 * @param searchValue
 * @param currPage
 * @param isRandom
 */
function load(searchValue,currPage,isRandom){
    var pageCount = $(".select-size").val();
    $.post("../choose/questions",{searchValue:searchValue,currPage:currPage,pageCount:pageCount,isRandom:isRandom},function (pageBean) {
        //设置页码显示信息
        var lis = "";
        var firstPage;
        var prePage = pageBean.currentPage-1;
        if(prePage<1){
            prePage = 1;
        }
        if(currPage!=1){
            firstPage = '<li onclick="javascript:load('+searchValue+','+prePage+','+isRandom+')" ><a href="#" class="btn-navs">PRE</a></li>';
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
                li = '<li onclick="javascript:load('+searchValue+','+i+','+isRandom+')" class="active"><a href="#">'+i+'</a></li>';
            }else{
                li = '<li onclick="javascript:load('+searchValue+','+i+','+isRandom+')"><a href="#">'+i+'</a></li>';
            }
            lis += li;
        }
        var nextPage = pageBean.currentPage+1;
        if(nextPage>pageBean.totalPage){
            nextPage = pageBean.totalPage;
        }
        var lastPage = '<li onclick="javascript:load('+searchValue+','+nextPage+','+isRandom+')"><a href="#" class="btn-navs">NEXT</a></li>'
        lis += lastPage;
        $("#page-select").html(lis);


        //展示数据
        var htmlData = "";
        for(var i = 0;i<pageBean.list.length;i++){
            var problem = pageBean.list[i];
            var div =
                '<div class="accordion-toggle border-f-e6f3ff border-ra4">\n' +
                '     <div class="toggle-title">\n' +
                '        '+problem.question+'\n' +
                '     </div>\n' +
                '     <div class="toggle-content" >\n' +
                '     <p>' +
                '        Our academics cooperate across disciplines to create exciting new courses and develop novel approaches to research issues. Our interdisciplinary ethos has helped us to become a national leader in many subject areas.' +
                '     </p>\n' +
                '     <div class="clearfix"></div>\n' +
                '     </div>\n' +
                '</div>';
            htmlData += div;
        }
        $("#questions-show").html(htmlData);

        loadQuestionJs();


    });
}