var tcBtn = $("#tm-btn > div");
tcBtn.click(function(){								//버튼을 클릭하면 실행하시오!
	var target = $(this);								//버튼을 클릭하면 그 버튼의 타겟이 변수에 저장
	var index = target.index();					//저장된 버튼 타켓에 번호를 설정
	//alert(index);
	//버튼을 클릭하면 클래스 active를 삭제
	tcBtn.removeClass("active");
	//클릭한 버튼에 클래스 active를 추가
	target.addClass("active");
	//버튼을 클릭하면 모든 컨텐츠를 삭제
	$("#tab-content0 > div").css("display","none");
	//클릭한 버튼에 해당되는 컨텐츠만 활성화
	$("#tab-content0 > div").eq(index).css("display","block");
});