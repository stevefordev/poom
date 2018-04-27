
$("#follow").click(function () {
    $("#follow").toggleClass("on");

    if($("#follow").hasClass("on")){
        $("#follow").text('팔로잉');
        $("#follow").css("background-color","#1f2b43");
    }else{
        $("#follow").text('팔로우');
        $("#follow").css("background-color","transparent");
    }
});

$("#block").click(function () {
    $("#block").toggleClass("on");
    if($("#block").hasClass("on")){
        $("#block").text("차단");
        $("#block").css("background-color","transparent");
    }else {
        $("#block").text("차단해제");
        $("#block").css("background-color","#1f2b43");
    }
});


var $introduceEdit = $("#introduceEdit");
var $introduceText = $("#introduceText");
var $introduceEditInput = $("#introduceEditInput");

$introduceEdit.click(function () {
    console.log( $introduceEdit);
    if($introduceText.hasClass("on")){
        $introduceText.removeClass("on");
        $(this).children("i").attr("class","fas fa-check-circle");
        $introduceEditInput.parent('form').addClass('on');
        $introduceEditInput.focus();

    }else{
        $(this).children("i").attr("class","fas fa-edit");
        $introduceText.addClass("on");
        $introduceEditInput.parent('form').removeClass('on');
        var newIntroduce = $introduceEditInput.val();
        $introduceText.text(newIntroduce);
    }
});



//닉네임 수정 버튼 눌렀을 때
$("#nicknameEdit").click(function () {
	var $profileNickname =  $('#profileNickname');
	var $nicknameEditInput = $("#nicknameEditInput");
    if($profileNickname.hasClass("on")) {
        //닉네임 떠있을 때
        $(this).children("i").attr("class", "far fa-check-circle");
        $profileNickname.removeClass("on");
        $nicknameEditInput.addClass("on");
        $nicknameEditInput.focus();
        var previousNickname = $profileNickname.text();
        $nicknameEditInput.val(previousNickname);
    } else {
        //input이 떠있을 때
        $(this).children("i").attr("class", "fas fa-edit");
        $nicknameEditInput.removeClass("on");
        $profileNickname.addClass("on");
        var newNickname = $nicknameEditInput.val();
        $profileNickname.text(newNickname);
    }//if~else end
});//$("#nicknameEdit").click() end

/********프로필 이미지 등록*************/
var $upload = $('#picEdit');
$upload.on("change", function() {

	var data = new FormData();
	var file = $upload.get(0).files[0];
	data.append('picEdit', file);
	$.ajax({
		url : 'ajax/picEdit.jsp',
		type : "post",
		dataType : "json",
		data : data,
		processData : false,
		contentType : false,
		success : function(json) {
			if (json.result) {
				console.log(json);
				//$("<img>").attr("src","thumbs/"+json.src).appendTo("#pic");
				$('#pic').css('background-image',
						'url("thumbs/' + json.src + '")');
			}

		},
		error : function(jqXHR, textStatus, errorThrown) {

			alert(textStatus);
		}
	});
});


