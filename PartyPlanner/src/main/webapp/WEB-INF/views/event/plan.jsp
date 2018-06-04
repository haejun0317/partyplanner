<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>파티기획하기</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />

<!-- css -->
<link href="http://fonts.googleapis.com/earlyaccess/jejugothic.css"
  rel="stylesheet" />
<link
  href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400italic,700|Open+Sans:300,400,600,700"
  rel="stylesheet">
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="/resources/bootstrap/css/bootstrap-responsive.css"
  rel="stylesheet" />
<link href="/resources/bootstrap/css/fancybox/jquery.fancybox.css"
  rel="stylesheet">
<link href="/resources/bootstrap/css/jcarousel.css" rel="stylesheet" />
<link href="/resources/bootstrap/css/flexslider.css" rel="stylesheet" />
<link href="/resources/bootstrap/css/slitslider.css" rel="stylesheet" />
<link href="/resources/bootstrap/css/style.css" rel="stylesheet" />
<!-- Theme skin -->
<link id="t-colors" href="/resources/bootstrap/skins/default.css"
  rel="stylesheet" />
<!-- boxed bg -->
<link id="bodybg" href="/resources/bootstrap/bodybg/bg1.css"
  rel="stylesheet" type="text/css" />
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
  href="/resources/bootstrap/ico/apple-touch-icon-144-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114"
  href="/resources/bootstrap/ico/apple-touch-icon-114-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72"
  href="/resources/bootstrap/ico/apple-touch-icon-72-precomposed.png" />
<link rel="apple-touch-icon-precomposed"
  href="/resources/bootstrap/ico/apple-touch-icon-57-precomposed.png" />
<link rel="shortcut icon" href="/resources/bootstrap/ico/favicon.png" />

<!-- 드로그 앤 드롭 -->
<style>
#sortable {
	list-style-type: none;
	margin: 0;
	padding: 0;
	width: 60%;
}

#sortable li {
	margin: 0 3px 3px 3px;
	padding: 0.4em;
	padding-left: 1.5em;
	font-size: 1.4em;
	height: 18px;
}

#sortable li span {
	position: absolute;
	margin-left: -1.3em;
}

.onoffswitch {
	position: relative;
	width: 120px;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
}

.onoffswitch-checkbox {
	display: none;
}

.onoffswitch-label {
	display: block;
	overflow: hidden;
	cursor: pointer;
	border: 2px solid #999999;
	border-radius: 12px;
	margin-left: -10px;
}

.onoffswitch-inner {
	display: block;
	width: 200%;
	margin-left: -100%;
	transition: margin 0.3s ease-in 0s;
}

.onoffswitch-inner:before, .onoffswitch-inner:after {
	display: block;
	float: left;
	width: 50%;
	height: 27px;
	padding: 0;
	line-height: 27px;
	font-size: 13px;
	color: white;
	font-family: Trebuchet, Arial, sans-serif;
	box-sizing: border-box;
}

.onoffswitch-inner:before {
	content: "식순제공 ON";
	padding-left: 9px;
	background-color: #F03C02;
	color: #FFFFFF;
}

.onoffswitch-inner:after {
	content: "식순제공 OFF";
	padding-right: 9px;
	background-color: #EEEEEE;
	color: #999999;
	text-align: right;
}

.onoffswitch-switch {
	display: block;
	width: 12px;
	height: 12px;
	margin: 7.5px;
	background: #FFFFFF;
	position: absolute;
	top: 0;
	bottom: 0;
	right: 89px;
	border: 2px solid #999999;
	border-radius: 12px;
	transition: all 0.3s ease-in 0s;
}

.onoffswitch-checkbox:checked+.onoffswitch-label .onoffswitch-inner {
	margin-left: 0;
}

.onoffswitch-checkbox:checked+.onoffswitch-label .onoffswitch-switch {
	right: 0px;
}
</style>
<!-- AJAX -->
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 달력 -->
<link rel="stylesheet"
  href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker();
		$("#datepicker1").datepicker();
	});
</script>
<script>
	//아코디언
	$(function() {
		$("#accordion2").sortable({
			update : function(event, ui) {
				setText();
			}
		});
		$("#accordion2").disableSelection();
	});
</script>


<!-- ★★★★★AJAX★★★★★ -->
<script type="text/javascript">
	/** 식순 총 정리 출력해주는 메서드 */
	function setText() {
		var text = "";
		var list = $(".accordion-group").each(
				function(index, item) {
					var optionText= "";
					$(item).children(".accordion-body").children(".accordion-inner").children(".checkboxOption").each(function(i,checkitem) {
						if($(checkitem).is(":checked")){
							optionText += "<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;" + $(checkitem).attr("name") +"</p>"
						}
					});
					text += "<div schedule='"+ $(item).attr("event") +"'><p>" + $(item).attr("event")
							+ "<span style='float: right;'>"
							+ $(item).attr("time") + "분</span></p>"+optionText+"</div>";
				});
		$("#showSchedule").html(text);
	}

	/** No.1 */
	/** 페이지 로드 시 식순 가져오기(식순제공ON버튼과 동일기능) */
	/** 페이지 로드 시 1회 실행하는 부분 */
	var eventName;
	$(window).load(function() {
		var name = $("#eventname").val();
		eventName = $("#eventname").val();
		sendOptionCallMessage();

	})

	//식순옵션가져오기 위해 비동기 통신 메세지 보내는 부분
	function sendOptionCallMessage() {
		$.ajax({
			method : "GET",
			url : "optioncall.do",
			dateType : 'json',
			success : onOptionCall,
			error : function() {
				console.log("실패");
			}
		});
	}

	var optionList;
	function onOptionCall(list) {
		optionList = list;
		sendEventCallMessage(eventName);
	}

	//화면 실행 시 처음 식순 불러오는 과정.
	//식순가져오기 위해 비동기 통신 메세지 보내는 부분
	function sendEventCallMessage(name) {
		$.ajax({
			method : "GET",
			url : "call.do",
			dateType : 'json',
			data : {
				name : name
			},
			success : onCall,
			error : function() {
				console.log("실패");
			}
		});
	}

	function onCall(list) {
		//반복
		$.each();
		var text = "";
		var count = 0;
		for ( var i in list) {
			//식순이름 저장
			if (optionList.length > 0) {
				var itemId = list[i].itemName;
				var itemTime = list[i].time;
				text += "<div class='accordion-group' event='"
						+ itemId.replace(" ", "") + "' name='"
						+ itemId.replace(" ", "") + "0' time='" + itemTime
						+ "'> <div class='accordion-heading'>";
				text += "<a class='accordion-toggle active' data-toggle='collapse' data-parent='#accordion2' href='#";
				text += itemId.replace(" ", "") + "0'>";
				text += "<i class='icon-plus'></i>" + itemId;
				text += "<span style='float: right;'>";
				text += "<input type='button' name='"
						+ itemId.replace(" ", "")
						+ "0' value='x' class='btn btn-mini' style='border-radius: 10px;' id='deleteBtn' onclick='deleteClick()'>";
				text += "</span></a></div>";
				text += "<div id='";
				text += itemId.replace(" ", "");
				text += "0' class='accordion-body collapse'>  <div class='accordion-inner'>";

				//내용 들어가는 부분
				//식순 별 옵션 체크박스 들어가는 부분
				for ( var j in optionList) {
					if (eventName == optionList[j].eventName
							&& itemId == optionList[j].itemName) {
						text += "&emsp;<input type='checkbox' class='checkboxOption' name='"
								+ optionList[j].name
								+ "' onclick='checkboxOptionClick("+itemId.replace(" ", "") + "0)'/>";
						text += "&emsp;" + optionList[j].name;
						text += "<br><br>";
						count += 1;
					}
					//else 들어가야함.
				}
				if (count == 0) {
					text += "&emsp;없음";
				} else {
					count = 0;
				}
				text += "</div></div></div>";
			}
		}
		$("#accordion2").append(text);
		setText();
	}

	var checkin = "";
	var checkout = "";
	/** 식순 별 옵션 체크박스 체크 했을 때 */
	function checkboxOptionClick() {
		//name 값 받아오기.
		var eventOptionName = event.target.name;
		//해당 체크박스 체크 유,무 확인
		if ($("input[name='" + eventOptionName + "']").is(":checked")) {
			$("#goodsChoice").attr("style", "display:block");
			checkboxOptionCallMessage(eventOptionName);
			checkin = $(arguments[0]).attr("id");
		} else {
			var text = "";
			$("#goodsChoice").html(text);
			$("#goodsChoice").attr("style", "display:none");
			checkout = $(arguments[0]).attr("id");
			console.log(checkout);	
			$("p[check='"+checkout+"'][option='"+eventOptionName+"']").each(function(index,item) {
				console.log($(item));
			});
		}
		setText();
	}

	//식순 별 옵션 체크박스 체크 했을 때 비동기 요청
	function checkboxOptionCallMessage(name) {
		$.ajax({
			method : "GET",
			url : "searchgoods.do",
			dateType : 'json',
			data : {
				name : name
			},
			success : onCheckboxOptionCall,
			error : function() {
				console.log("실패");
			}
		});
	}

	function onCheckboxOptionCall(list) {
		var text = "";

		$.each();
		if (list.length > 0) {
			text += "<h5><strong>물품</strong>선택</h5>";
			text += "<table class='table table-striped'>";
			text += "<thead>";
            text += "<tr><th width='40%''>물품</th><th width='20%''>가격</th><th width='40%''>수량</th></tr>";
            text += "</thead>";
            text += "<tbody>";
            
            
			for ( var i in list) {
				var goodsName = list[i].name;
				var goodsPrice = list[i].price;
				var optionName = list[i].optionName;
				
				text += "<tr>";
				text += "<td>" + goodsName + "</td>";
				text += "<td>&#8361;" + goodsPrice + "</td>";
				text += "<td><input value='1' type='text' class='input-mini search-query' amount='"+ goodsName +"'style='border-radius: 10px; width:20px'>&nbsp;개&nbsp;";
				text += "<input type='button' class='btn btn-square btn-theme' style='border-radius: 10px;' value='추가' option='"+optionName+"' goods='"+goodsName+"' price='"+goodsPrice+"' onclick='goodsAdd(this)'></td>";
				text += "</tr>";
			}
			 text +="</tbody></table>";
			 
			$("#goodsChoice").html(text);
		} else {
			$("#goodsChoice").html(text);
		}
	}
	
	/** 물품 추가 버튼 눌렀을때 돌아가는 이벤트 */
	var addCount = 0;
	function goodsAdd(button) {
		var goods = $(button).attr("goods");
		var price = $(button).attr("price");
		var option = $(button).attr("option");
		var amount = $("input[amount="+goods+"]").val();
		var total = Number(price)*Number(amount);
		var text = "";
		text += "<p id='"+goods + addCount +"' option='"+option+"' check='"+checkin+"'>";
		text += goods + "(&#8361;" + price +") * "+$("input[amount="+goods+"]").val()+"개";
		text += "<span style='float: right;' class='priceList' total='"+total+"'>&#8361;"+ setComma(total) +"&nbsp;&nbsp;<i value='" + goods + addCount +"' class='icon-remove' onclick='goodsRemove(this)'></i></span>";
        text += "</p>";
		$("#goodsList").append(text);
		addCount++;
		totalSum();
	}
	
	/** 물품 추가 목록 에서 x 버튼 누를때 돌아가는 이벤트 */
	function goodsRemove(xbutton){
		var goodsId = $(xbutton).attr("value");
		$("#"+goodsId).remove();
		totalSum();
	}
	
	/** 물품 추가 / 제거 후 합계 변경 함수 */
	function totalSum() {
		var sum = 0;
		$('.priceList').each(function(index, item) {
			var total = $(item).attr("total");
			sum += Number(total);
		})
		$('#sum').html(setComma(sum));
	}

	/** option 중복 js 콤마 찍기 */
	function setComma(number) {
	    // 정규표현식 : (+- 존재하거나 존재 안함, 숫자가 1개 이상), (숫자가 3개씩 반복)
	    var reg = /(^[+-]?\d+)(\d{3})/;

	    // 스트링변환
	    number += '';
	    while (reg.test(number)) {
	        // replace 정규표현식으로 3자리씩 콤마 처리
	        number = number.replace(reg,'$1'+','+'$2');
	    }

	    return number;
	}
	
	/** 각종 이벤트 동작 부분 */
	$(document).ready(function() {
		/** 스위치 작동 부분 */
		$("#myonoffswitch").change(function() {
			if ($("#myonoffswitch").is(":checked")) {
				$("#accordion2").empty();
				var name = $("#eventname").val();
				sendEventCallMessage(name);
			} else {
				$("#accordion2").empty();
				setText();
			}
		});

		/** 파티검색 부분 */
		$("#partySearch").click(function() {
			sendMessage(eventName);
		});

		/** 파티검색하고 식순 검색하는 부분 */
		$("#searchItemListBtn").click(function() {
			var searchItem = $("#searchItemListIn").val();
			searchItemMessage(eventName, searchItem);
		});

		/** 파티검색하고 식순 검색하는 부분 ( 직접 추가하기 버튼 ) */
		$("#eventSelfBtn").click(function() {
			var searchItem = $("#eventSelfIn").val();
			selfAddMessage(searchItem);

		});

		/** 파티 식순 전체 리스트 다시 불러오기 */
		$("#searchItemListAllBtn").click(function() {
			sendMessage(eventName);
		});

	});

	/** 파티검색하고 식순 검색하는 부분 <-메세지-> */
	function searchItemMessage(event, item) {
		$.ajax({
			method : "GET",
			url : "searchlist.do",
			dateType : 'json',
			data : {
				event : event,
				item : item
			},
			success : onSearchItemList,
			error : function() {
				console.log("실패");
			}
		});
	}

	// 식순 리스트에 중복 값이 있는지 없는지 확인.
	function check(itemId) {
		return $("div[event=" + itemId + "]").length;
	}

	// 식순 리스트에서 X 버튼을 클릭 했을 때.
	function deleteClick() {
		var itemId = event.target.name;
		console.log(itemId);
		$("[name=" + itemId + "]").remove();
		setText();
		$("p[check='"+itemId+"']").each(function(index,item) {
			$(item).remove()
		});
		totalSum();
	}

	// 식순 검색 리스트에서 '추가' 버튼 클릭 시 식순 추가 되는 부분
	// 추가 할 때 기존에 있는 목록들을 확인 해야 함.
	function addClick() {
		var itemId = event.target.id;
		var itemCount = check(itemId.replace(" ", ""));
		var itemTime = "";
		for ( var i in scheduleList) {
			if (itemId == scheduleList[i].itemName) {
				itemTime = scheduleList[i].time;
			}
		}
		var count = 0;
		text = "";
		text += "<div class='accordion-group' event='"
				+ itemId.replace(" ", "") + "' name='"
				+ itemId.replace(" ", "") + itemCount + "' time='" + itemTime
				+ "'> <div class='accordion-heading'>";
		text += "<a class='accordion-toggle active' data-toggle='collapse' data-parent='#accordion2' href='#";
		text += itemId.replace(" ", "") + itemCount + "'>";
		text += "<i class='icon-plus'></i>" + itemId;
		text += "<span style='float: right;'>";
		text += "<input type='button' value='x' name='"
				+ itemId.replace(" ", "")
				+ itemCount
				+ "' class='btn btn-mini' style='border-radius: 10px;' id='deleteBtn' onclick='deleteClick()'>"
		text += "</span></a></div>";
		text += "<div id='";
		text += itemId.replace(" ", "") + itemCount;
		text += "' class='accordion-body collapse'>  <div class='accordion-inner'>";
		for ( var j in optionList) {
			if (eventName == optionList[j].eventName
					&& itemId == optionList[j].itemName) {
				text += "&emsp;<input type='checkbox' class='checkboxOption' name='"
					+ optionList[j].name
					+ "' onclick='checkboxOptionClick("+itemId.replace(" ", "") + itemCount+")'/>";
				text += "&emsp;" + optionList[j].name;
				text += "<br><br>";
				count += 1;
			}
			//else 들어가야함.
		}
		if (count == 0) {
			text += "&emsp;없음";
		} else {
			count = 0;
		}
		text += "</div></div></div>";
		$("#accordion2").append(text);
		setText();
	}

	// 파티 찾기에서 직접입력 후 추가 버튼 클릭 시 동작
	function selfAddMessage(searchItem) {
		var itemId = searchItem;
		var itemCount = check(itemId.replace(" ", ""));
		var itemTime = "";
		for ( var i in scheduleList) {
			if (itemId == scheduleList[i].itemName) {
				itemTime = scheduleList[i].time;
			}
		}

		text = "";
		text += "<div class='accordion-group' event='"
				+ itemId.replace(" ", "") + "' name='"
				+ itemId.replace(" ", "") + itemCount + "' time='" + itemTime
				+ "'> <div class='accordion-heading'>";
		text += "<a class='accordion-toggle active' data-toggle='collapse' data-parent='#accordion2' href='#";
		text += searchItem.replace(" ", "") + itemCount + "'>";
		text += "<i class='icon-plus'></i>" + searchItem;
		text += "<span style='float: right;'>";
		text += "<input type='button' value='x' name='"
				+ itemId.replace(" ", "")
				+ itemCount
				+ "' class='btn btn-mini' style='border-radius: 10px;' id='deleteBtn' onclick='deleteClick()'>"
		text += "</span></a></div>";
		text += "<div id='";
		text += searchItem.replace(" ", "") + itemCount;
		text += "' class='accordion-body collapse'>  <div class='accordion-inner'>";
		text += "&emsp;직접 입력 식순";
		text += "</div></div></div>";
		$("#accordion2").append(text);
		setText();
	}

	//ajax.js를 이용하여 구현
	function sendMessage(name) {
		$.ajax({
			method : "GET",
			url : "search.do",
			dateType : 'json',
			data : {
				name : name
			},
			success : onMessage,
			error : function() {
				console.log("실패");
			}
		});
	}

	/** 식순검색 모달 내 검색 버튼 눌렀을 때 실행 */
	function onSearchItemList(list) {
		var text = "";
		for ( var i in list) {
			text += "<tr>";
			text += "<td style='text-align:center'>" + list[i].itemName
					+ "</td>";
			text += "<td style='text-align:center'>" + list[i].time + "분</td>";
			text += "<td style='text-align:center'>";
			text += "<input type='button' class='btn btn-square btn-theme'";
			text += " style='border-radius: 10px;' value='추가' id='"
					+ list[i].itemName + "'";
			text += "onclick='addClick()'>";
			text += "</td></tr>";
		}
		$("#searchtable").html(text);
	}

	/** 식순검색 버튼 눌렀을 때 실행 */
	var scheduleList;
	function onMessage(list) {
		scheduleList = list;
		$.each();
		//head
		var text = "";
		for ( var i in list) {
			text += "<tr>";
			text += "<td style='text-align:center'>" + list[i].itemName
					+ "</td>";
			text += "<td style='text-align:center'>" + list[i].time + "분</td>";
			text += "<td style='text-align:center'>";
			text += "<input type='button' class='btn btn-square btn-theme'";
			text += " style='border-radius: 10px;' value='추가' id='"
					+ list[i].itemName + "'";
			text += "onclick='addClick()'>";
			text += "</td></tr>";
		}

		$("#searchtable").html(text);
	}
</script>

<!-- 주소검색 API -->

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 도로명 조합형 주소 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}
						// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
						if (fullRoadAddr !== '') {
							fullRoadAddr += extraRoadAddr;
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample4_roadAddress').value = fullRoadAddr;
					}
				}).open();
	}
</script>
</head>

<body>
  <jsp:include page="/WEB-INF/views/include/header.jsp" />

  <section id="inner-headline">
    <div class="container">
      <div class="row">
        <div class="span4">
          <div class="inner-heading">
            <h2>${event.name}기획</h2>
            <input type="hidden" value="${event.name}" id="eventname">
          </div>
        </div>
        <div class="span8">
          <ul class="breadcrumb">
            <li><a href="#"><i class="icon-home"></i></a><i
              class="icon-angle-right"></i></li>
            <li><a href="#">Features</a><i class="icon-angle-right"></i></li>
            <li class="active">Components</li>
          </ul>
        </div>
      </div>
    </div>
  </section>
  <section id="content">
    <div class="container">
      <div class="row demobtn">
        <div class="span12">
          <!-- end divider -->
          <div class="row">
            <div class="span6">

              <table class="table table-striped">
                <thead>
                  <tr>
                    <td style="padding: 0px; vertical-align: top;">
                      <div class="btn-group">
                        <button class="btn btn-square btn-theme"
                          style="background-color: #18191a; border-color: #18191a; border-radius: 10px;">01
                          식순</button>
                        <button class="btn btn-square btn-theme"
                          style="border-radius: 10px;">02 옵션</button>

                      </div>
                    </td>

                    <td style="padding: 0px; vertical-align: top;"></td>
                    <td style="padding: 0px; vertical-align: top;"></td>
                    <td style="padding: 0px; vertical-align: top;">

                      <div class="onoffswitch" style="float: right;">
                        <input type="checkbox" name="onoffswitch"
                          class="onoffswitch-checkbox"
                          id="myonoffswitch" checked> <label
                          class="onoffswitch-label" for="myonoffswitch">
                          <span class="onoffswitch-inner"></span> <span
                          class="onoffswitch-switch"></span>
                        </label>
                      </div>

                    </td>
                  </tr>
                </thead>

              </table>



              <!-- 드로그앤 드롭 / 테스트 -->

              <h5>
                <strong>식순</strong>선택

                <!-- 검색 modal★ -->
                <a href="#searchModal" data-toggle="modal"
                  style="float: right; font-size: 15pt" id="partySearch"><i
                  class="icon-search"></i>식순 검색</a>

                <!-- 검색 modal★ -->
                <!-- 비동기 통신 하는 부분(행사 식순 목록 가져오기) -->
                <div id="searchModal" class="modal styled hide fade"
                  tabindex="-1" role="dialog"
                  aria-labelledby="mySignupModalLabel"
                  aria-hidden="true">
                  <div class="modal-header">
                    <button type="button" class="close"
                      data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 id="mySignupModalLabel">
                      <strong> ${event.name} </strong> Party Search
                    </h4>
                  </div>
                  <div class="modal-body">
                    <form class="form-horizontal">
                      <div class="control-group">

                        <div class="controls" style="margin-left: 90px;">
                          <input type="text"
                            placeholder="원하는 식순을 입력하세요."
                            style="border-radius: 10px;"
                            id="searchItemListIn"> <input
                            type="button"
                            class="btn btn-square btn-theme"
                            style="border-radius: 10px;"
                            id="searchItemListBtn" value="검색"> <input
                            type="button"
                            class="btn btn-square btn-theme"
                            style="border-radius: 10px;"
                            id="searchItemListAllBtn" value="전체식순보기">
                        </div>
                      </div>

                      <!-- 이 부분 부터 비동기 통신 해야함. -->
                      <table class="table table-striped"
                        style="font-size: 13px;">
                        <thead>
                          <tr>
                            <th width="50%" style='text-align: center'>이름</th>
                            <th width="30%" style='text-align: center'>시간</th>
                            <th width="20%"></th>
                          </tr>
                        </thead>
                        <tbody id="searchtable">
                        </tbody>
                      </table>

                      <!-- 여기까지 비동기 통신. -->

                      <div class="control-group">

                        <div class="controls"
                          style="margin-left: 125px;">
                          <input type="text" id="eventSelfIn"
                            placeholder="식순 직접 입력"
                            style="border-radius: 10px;"> <input
                            type="button"
                            class="btn btn-square btn-theme"
                            style="border-radius: 10px;"
                            id="eventSelfBtn" value="직접추가">
                        </div>

                        <p class="aligncenter margintop20"
                          style="font-size: 18px">
                          행사 기획은 <strong>Party Planner</strong> 와 함께
                      </div>

                    </form>

                  </div>
                </div>

              </h5>
              <!-- start: Accordion -->
              <div class="accordion" id="accordion2">
                <!-- 아코디언 들어오는 부분 -->
              </div>
              <!--end: Accordion -->

              <!-- 물품 선택 하는 부분!!!!! -->
              <div class="solidline"></div>
              <article id="goodsChoice" style="display: none;">
                <h5>
                  <strong>물품</strong>선택
                </h5>
                <table class="table table-striped">
                  <thead>
                    <tr>   
                      <th width="40%">물품</th>
                      <th width="20%">가격</th>
                      <th width="40%">수량</th>
                    </tr>
                  </thead>

                  <!-- 물품 선택 나타는 부분 -->
                  <tbody id="goodsChoiceTable">
                    <!-- 
                    <tr>
                      <td>1</td>

                      <td>스케치북</td>
                      <td>&#8361;5,000</td>
                      <td><input placeholder="기본 1개" type="text"
                        class="input-mini search-query"
                        style="border-radius: 10px">
                        <button type="submit"
                          class="btn btn-square btn-theme"
                          style="border-radius: 10px;">추가</button></td>
                    </tr>
                     -->
                  </tbody>
                </table>
              </article>


            </div>
            <div class="span6">
              <div class="widget">
                <div class="widget">
                  <form class="form-search">
                    <span class="category">장&emsp;&emsp;소&emsp; <input
                      placeholder="장소 (명)" type="text"
                      class="input-medium search-query"
                      style="border-radius: 10px; width: 315px; margin-right: 10px"
                      id="sample4_roadAddress"> <input
                      type="button" class="btn btn-square btn-theme"
                      style="border-radius: 10px; width: 100px"
                      onclick="sample4_execDaumPostcode()"
                      value="우편번호 찾기">
                    </span>
                  </form>
                  <form class="form-search">
                    <span class="category">인&emsp;&emsp;원&emsp; <input
                      placeholder="인원 입력 (명)" type="text"
                      class="input-medium search-query"
                      style="border-radius: 10px; width: 100px;">
                    </span> <span class="category" style="">&emsp;파티시작일&emsp;
                      <input type="text" id="datepicker"
                      style="border-radius: 10px; width: 95px;">
                      ~ <input type="text" id="datepicker1"
                      style="border-radius: 10px; width: 95px;">
                    </span>
                  </form>
                </div>

                <form class="form-search">
                  <span class="category"> 예상시간&emsp; <input
                    placeholder="예상 시간 (분)" type="text"
                    class="input-medium search-query"
                    style="border-radius: 10px; width: 100px;">
                  </span> <span class="category" style="">&emsp;설&emsp;&emsp;&emsp;정&emsp;
                    <button class="btn btn-square btn-theme"
                      style="border-radius: 10px; width: 108px">추천식순받기</button>&emsp;
                    <button class="btn btn-square btn-theme"
                      style="border-radius: 10px; width: 108px">전체동일설정</button>
                  </span>
                </form>
              </div>
              <div class="widget">
                <div class="solidline"></div>
              </div>



              <div
                style="line-height: 2.0em; padding-left: 30px; padding-right: 30px">
                <span style="font-size: 14pt;"><strong>선택
                    식순</strong></span>
                <div id="showSchedule"></div>
              </div>


              <div class="widget">
                <div class="solidline"></div>
              </div>


              <div
                style="line-height: 2.3em; padding-left: 30px; padding-right: 30px">
                <span style="font-size: 14pt;"><strong>추가 물품</strong></span>
                <div id="goodsList">
                </div>
              </div>


              <div class="widget">
                <div class="solidline"></div>
              </div>
              <div
                style="line-height: 2.0em; padding-left: 30px; padding-right: 30px">
                <b style="font-size: 15pt;">총 견적 금액 </b><b
                  style="font-size: 35pt;"><span
                  style="float: right;" id="sum"><strong>0</strong></span></b>
              </div>




              <!-- 두번째 탭 -->




              <!-- end divider -->
            </div>
          </div>

          <div class="widget">
            <div class="solidline"></div>
          </div>

          <!-- end span12 -->
          <div class="row">
            <div style="text-align: right;">
              <button type="submit" class="btn btn-square btn-theme"
                style="border-radius: 10px">다음</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <jsp:include page="/WEB-INF/views/include/footer.jsp" />

  <!-- 아코디언 내용 -->
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</body>

</html>
