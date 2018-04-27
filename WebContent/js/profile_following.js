//팔로워 삭제하기
$(".item_user ").on("click",function (e) {

    $(this).remove();


    e.preventDefault();

});//li on() end

//팔로잉 부분 제이커리
$(".tab_exchange li:nth-child(1) a").click(function (e) {
    $("#profileMenu").removeClass("on");
    e.preventDefault();
});
//팔로잉 부분 제이커리
$(".tab_exchange li:nth-child(2) a").click(function (e) {

    $("#profileMenu").addClass("on");

    e.preventDefault();
});


//팔로잉 부분 제이커리
$(".tab_service li:nth-child(1) a").click(function (e) {
    $("#myWritingBox").removeClass("on");
    e.preventDefault();
});
//팔로잉 부분 제이커리
$(".tab_service li:nth-child(2) a").click(function (e) {

    $("#myWritingBox").addClass("on");


    e.preventDefault();
});
