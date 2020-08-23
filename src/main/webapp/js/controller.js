$(function(){
	$(".row1").click(function(){
		$($(this).children(".list_item_form")).submit();
	});
	$("#newEmployee").click(function(){
		$('<form action="new" method="get"></form>').appendTo('body').submit();
	});
	$("#nav2").click(function(){
		$('<form action="culture_page" method="get"></form>').appendTo('body').submit();
	});
	$("#nav1").click(function(){
		$('<form action="index_page" method="get"></form>').appendTo('body').submit();
	});
	$("#login").click(function(){
		$('<form action="login_page" method="get"></form>').appendTo('body').submit();
	});
	$("#profile").click(function(){
		$('<form action="profile" method="get"></form>').appendTo('body').submit();
	});
	
	$("#profilephone").click(function(){
		$('<form action="profile" method="get"></form>').appendTo('body').submit();
	});
	
	$("#logout").click(function(){
		$('<form action="sessionClear" method="get"></form>').appendTo('body').submit();
	});
	$("#logoutphone").click(function(){
		$('<form action="sessionClear" method="get"></form>').appendTo('body').submit();
	});
	
	$("#admin").click(function(){
		$('<form action="adminpost" method="get"></form>').appendTo('body').submit();
	});
	$("#postDelete").click(function(){
		$('<form action="delete/'+$(this).attr("name")+'" method="get"></form>').appendTo('body').submit();
	});
	$("#empUpdate").click(function(){
		$('<form action="update/'+$(this).attr("name")+'" method="get"></form>').appendTo('body').submit();
	});
	
})