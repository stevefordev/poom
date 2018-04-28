var cardUtil = {

  /**
   * url: 카드 리스 요청 ajax non view url
   * tmp: 
   * */
  getCardList: function(url, tmp, $cardBox, selecterImgBox, count) {

    /* 카드 호출 */
    $.ajax({
      url: url,
      dataType: "json",
      data: {
        "count": count
      },
      success: function(data) {
        console.log(data);

        // 탬플릿 생성
        var markup = tmp({
          "list": data
        });
        $cardBox.html(markup);

        // slick 이미지 슬라이드 적용
        $(selecterImgBox).imageSlide();
      },
      error: function(jqXHR, textStatus, errorThrown) {
        console.log(textStatus);
      }
    });// end .ajax

    // 팔로잉 버튼 선택시 색 변경
    $cardBox.on('click', '.heart', function() {
      console.log('.heart click');
      if ($(this).children("i").hasClass("far")) {
        $(this).children("i").attr("class", "fas fa-heart");
      } else {
        $(this).children("i").attr("class", "far fa-heart");
      }
    }); // end $cardBox.on click
  }// end getCardList function
}// end cardUtil
