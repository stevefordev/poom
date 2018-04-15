var cards = [
    {"img1":"img/heroimage/heroImage.jpg","img2":"img/serviceimg/work2.jpg","img3":"img/serviceimg/work3.jpg", "profilePic":"img/profile/profile_img.png","nickname":"안륜동","title":"집청소의 끝판왕(집안일 뭐든해요)","tag":"#청소 #집안일 #이불빨래","score":"78%(50) / 서울 마포","price":"60품"},
    {"img1":"img/heroimage/heroImage.jpg","img2":"img/serviceimg/work2.jpg","img3":"img/serviceimg/work3.jpg", "profilePic":"img/profile/profile_img.png","nickname":"안륜동","title":"집청소의 끝판왕(집안일 뭐든해요)","tag":"#청소 #집안일 #이불빨래","score":"78%(50) / 서울 마포","price":"60품"},
    {"img1":"img/heroimage/heroImage.jpg","img2":"img/serviceimg/work2.jpg","img3":"img/serviceimg/work3.jpg", "profilePic":"img/profile/profile_img.png","nickname":"안륜동","title":"집청소의 끝판왕(집안일 뭐든해요)","tag":"#청소 #집안일 #이불빨래","score":"78%(50) / 서울 마포","price":"60품"},
    {"img1":"img/heroimage/heroImage.jpg","img2":"img/serviceimg/work2.jpg","img3":"img/serviceimg/work3.jpg", "profilePic":"img/profile/profile_img.png","nickname":"안륜동","title":"집청소의 끝판왕(집안일 뭐든해요)","tag":"#청소 #집안일 #이불빨래","score":"78%(50) / 서울 마포","price":"60품"},
    {"img1":"img/heroimage/heroImage.jpg","img2":"img/serviceimg/work2.jpg","img3":"img/serviceimg/work3.jpg", "profilePic":"img/profile/profile_img.png","nickname":"안륜동","title":"집청소의 끝판왕(집안일 뭐든해요)","tag":"#청소 #집안일 #이불빨래","score":"78%(50) / 서울 마포","price":"60품"},
    {"img1":"img/heroimage/heroImage.jpg","img2":"img/serviceimg/work2.jpg","img3":"img/serviceimg/work3.jpg", "profilePic":"img/profile/profile_img.png","nickname":"안륜동","title":"집청소의 끝판왕(집안일 뭐든해요)","tag":"#청소 #집안일 #이불빨래","score":"78%(50) / 서울 마포","price":"60품"}
];
var tmp = _.template($("#step1CardTmp").html());

var markup = tmp({"list":cards});

$("#cardBox").html(markup);

$(".heart").click(function () {
    if($(this).children("i").hasClass("far")) {
        $(this).children("i").attr("class", "fas fa-heart");
    } else {
        $(this).children("i").attr("class", "far fa-heart");
    }//if~else end
});

//이미지 슬라이드 자바스크립트
$(document).ready(function(){
    $('.img_box').each(function(){
        var imgBox = $(this);
        imgBox.slick({
            adaptiveHeight:true,
            prevArrow:imgBox.parent().find(".left_cursor"),
            nextArrow:imgBox.parent().find(".right_cursor")
        })

    });
});