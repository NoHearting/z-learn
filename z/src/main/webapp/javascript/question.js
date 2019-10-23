/**
 * 由于重新设置标签的html内容之后，新设置的内容无法响应原有的js效果。
 * 所以需要重新加载一次js内容。
 * 这一部分内容是“问题”页面显示的js代码
 */
function loadQuestionJs(){
    //重新加载问题展开显示的js代码   main.js 202
    $('.flat-faqs').each(function () {
        var speed = {duration: 400};
        $('.flat-faqs .toggle-content').hide();
        $('.flat-faqs .accordion-toggle .toggle-title.active').siblings('.toggle-content').show();
        $('.flat-faqs .accordion').find('.toggle-title').on('click', function() {
            $(this).toggleClass('active');
            $(this).next().slideToggle(speed);
            $(".flat-faqs .toggle-content").not($(this).next()).slideUp(speed);
            if ($(this).is('.active')) {
                $(this).closest('.accordion').find('.toggle-title.active').toggleClass('active')
                $(this).toggleClass('active');
            };
        });
    });
};