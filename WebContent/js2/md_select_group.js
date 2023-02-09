$(document).ready(function() {
    // 移댄뀒怨좊━ �꾪꽣留�
    $('.tabArea li button').click(function() {
        var filterName = $(this).attr('class');
        $('.tabArea li').removeClass('current');
        $(this).parent().addClass('current');
        $('.contArea:not(.' + filterName +')').addClass('d-n');
        $('.contArea.' + filterName).removeClass('d-n');
    });
    // �꾩껜�ы뻾吏� on
    $('.select_country .btnWrap a').click(function() {
        $('body').addClass('modal-opened');
        $('.stu_md_select_group').addClass('active');
    });
    // �꾩껜�ы뻾吏� off
    $('.stu_md_head a, .stu_md_background').click(function() {
        $('body').removeClass('modal-opened');
        $('.stu_md_select_group').removeClass('active');
    });
});