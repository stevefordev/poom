//찜 목록 탭 활성화
$left_side_tab_li.removeClass("on").eq(2).addClass("on");

//찜버튼 (하트버튼) 클릭 시 찜 목록에서 삭제
var $likelistContent_ul = $(".content_likelist ul");

$likelistContent_ul.on("click", ".box_heart", function () {
    if(confirm("해당 품을 찜 해제하시겠습니까?")) {
        //'예' 클릭한 경우
        $(this).children("i").attr("class", "far fa-heart");
        $(this).parents(".content_likelist li").remove();
    }
});

//ul에 template 띄우기
var $secondLevelGiverCardTmp = $("#secondLevelGiverCardTmp"),
	secondLevelGiverCardTmp = $secondLevelGiverCardTmp.html(),
	tmp = _.template(secondLevelGiverCardTmp);
	
function createLikelist() {
    var markup = tmp();

    $likelistContent_ul.prepend(markup);
}//createLikelist() end

createLikelist();

//하트 항상 활성화
$(".box_heart").children("i").attr("class", "fas fa-heart");
