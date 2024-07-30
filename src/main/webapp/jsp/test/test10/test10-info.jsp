<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Melong</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="info.css">
</head>
<body>

<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
    
    String title = request.getParameter("title");
    String id = request.getParameter("id");
    
%>


	<div id="wrap">
		<header class="d-flex w-50">
			<div class="banner text-success d-flex align-items-center justify-content-center font-weight-bold w-25">Melong</div>
            <div class="search d-flex align-items-center">
            	<form method="get" action="/jsp/test/test10/test10-info.jsp">
             	   <div class="input-group">
         	           <input type="text" class="form-control" placeholder="" aria-label="" aria-describedby="button-addon2" name="title">
       	  	           <div class="input-group-append">
    	                	<button class="btn text-white font-weight-bold btn-info" type="submit" id="button-addon2">검색</button>
   	                   </div>
               	   </div>                	
               	</form>
            </div>
		</header>
		<nav class="main-menu d-flex align-items-center">
			<ul class="nav nav-fill font-weight-bold w-50">
				<li class="nav-item"><a href="#" class="nav-link text-dark">멜롱차트</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark">멜롱DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark">뮤직어워드</a></li>
			</ul>
		</nav>
		<div>
			<h3>곡 정보</h3>
		</div>
		<article class="contents">
			<div class="musicInfo border border-success d-flex">
				<% for(Map<String, Object> music:musicList) { 
					String idString = String.valueOf(music.get("id"));
					String titleString = (String)music.get("title");
					if((title != null && titleString.equals(title)) || (id != null && idString.equals(id))){ 
					int timeInt = (int)music.get("time");%>				
				<div class="musicThumbnail d-flex align-items-center ml-2">
					<img src="<%= music.get("thumbnail") %>" class="h-75">
				</div>
				<div class="m-4">
					<div class="musicTitle display-4">
						<%= music.get("title") %>
					</div>
					<div class="musicSinger text-success font-weight-bold">
						<%= music.get("singer") %>
					</div>
					<div class="d-flex">
						<div class="text-left ">
							앨범<br>
							재생시간<br>
							작곡가<br>
							작사가<br>
						</div>
						<div class="ml-5">
							<%= music.get("album") %><br>
							<b><%= timeInt / 60 %> : <%= timeInt % 60 %></b><br>
							<%= music.get("composer") %><br>
							<%= music.get("lyricist") %><br>
						</div>
					</div>
				</div>				
				<% } } %>		
			</div>
			<div>
				<br>
				<h3>가사</h3>
				<hr>
				<h4>가사 정보 없음</h4>
				<br>
			</div>			
		</article>
		<hr>
		<footer class="d-flex align-items-center justify-content-start">
			<div>
				Copyright 2021. melong All Rights Reserved.
			</div>
		</footer>
	</div>	

</body>
</html>