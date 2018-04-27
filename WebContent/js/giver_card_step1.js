var cardUtil = { 
 
	selectCardList : function(tmp, $selecterCardBox, selecterImgBox) {
		
		/* 1단 카드 호출 */
		$.ajax({
			url : "ajax/getCardList.jsp",
			dataType : "json",
			data : {
				step : 1
			},
			success : function(data) {
				console.log(data);
				var markup = tmp({
					"list" : data
				});
				
				$selecterCardBox.html(markup);
				
				slickUtil.createImageCards($(selecterImgBox), 1);				
			},
			error : function(jqXHR, textStatus, errorThrown) {
				console.log(textStatus);
			}
		});
	}
}

// slickUtil.createImageCards($('.img_box'), 1);

$("#cardBox").on('click', '.heart', function() {
	console.log('.heart click');
	if ($(this).children("i").hasClass("far")) {
		$(this).children("i").attr("class", "fas fa-heart");
	} else {
		$(this).children("i").attr("class", "far fa-heart");
	}// if~else end
});
