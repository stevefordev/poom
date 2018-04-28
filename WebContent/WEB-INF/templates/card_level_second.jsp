<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/template" id="cardGiverLevelFirstTmp">
    <@ _.each(list,function(card){ @>
    <div class="card">
        <div class="img_view">
            <div class="heart">
                <i class="far fa-heart"></i>
                <span class="heart_count"><@=card.countLike@></span>
            </div>
            <div class="cursor">
                <button class="left_cursor"><i class="fas fa-angle-left"></i></button>
                <button class="right_cursor"><i class="fas fa-angle-right"></i></button>
            </div>
            <div class="img_box">
				<@ _.each(card.photos,function(photo) { @>
                <img src="<@=photo@>">
                <@ })@>
            </div>
        </div>
        <div class="profile_pic_box">
            <img src="<@=card.profilePic@>">
            <span><@=card.nickname@></span>
        </div>
        <div class="content">
            <ul>
                <li class="title"><@=card.title@></li>
                <li class="tag"><@=card.tags@></li>
                <li class="score"><span class="icon_small sun"></span>&nbsp;<@=card.scoreTotal@>(<@=card.countScore@>)&nbsp;<span><@=card.area1@></span>&nbsp;<span><@=card.area2@></span></li>
                <li class="poom"><@=card.poom@>품</li>
            </ul>
        </div>
    </div>
    <@ }) @>
</script>

