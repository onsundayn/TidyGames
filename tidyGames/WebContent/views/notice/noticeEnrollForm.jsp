<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#notice{color:orange;}
	.outer{
		background-color: #0e332c;
		color:white;
		width:1200px;
		height:1100px;
		margin:auto;
		margin-top:50px;
	}
	.navi{border-bottom:2px solid rgba(255, 255, 255, 0.333);}
	.write-form{
	    background-color: lightgray;
	    width:1100px;
	    height:1000px;
	    margin:auto;
	    margin-top:50px;
	}
	#enroll-form{
		width:1000px;
		margin:auto;
	}
	#enroll-form input, #enroll-form textarea{
		width:100%;
		box-sizing:border-box;
	 }
	 table{
	     margin:auto;
	     color:rgb(46, 45, 45);
	 }
</style>
</head>
<body style="background-color: #0e332c;">

	<%@ include file="../common/topbar.jsp" %>
	<div class="navi"><%@ include file="../common/navibar.jsp" %></div>
	<%--SummerNote--%>
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet"> 
  	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
  	<script src=" https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>

    <div class="outer">

        <h2>TIDY NOTICE</h2>

        <div class="write-form">
			<br><br>
            <form action="" id="enroll-form" method="post">
				
				<table>
                    <tr>
                        <th width="100"><h5>제목</h5></th>
                        <td width="800" heigt="30" colspan="4"><input type="text" name="title" required></td>
                    </tr>
                    <tr><td colspan="5" height="20"></td></tr>
                    <tr>
                        <td colspan="5" style="background:white">
                            <textarea rows="30" name="content" required style="resize:none"></textarea>
                        </td>
                    </tr>
                    <tr><td colspan="5" height="20"></td></tr>
                    <tr>
                    <th>첨부파일</th>
                    <td width="50"><input type="file" name="file1"></td>
                    <td width="50"><input type="file" name="file2"></td>
                    <td width="50"><input type="file" name="file3"></td>
                    <td width="50"><input type="file" name="file4"></td>
                	</tr>
                </table>
                <br>
                <div align="right" style="width:1000px">
                    <button type="button" onclick="history.back();" class="btn btn-sm btn-secondary">뒤로가기</button>
                    <button type="reset" class="btn btn-sm btn-info">취소</button>
                    <button type="submit" class="btn btn-sm btn-success">등록</button>
                </div>


            </form>

        </div>
        
        <script>
	    $(document).ready(function() {
	        $('#summernote').summernote({
	          // 에디터 높이
	      	  height: 500,
	      	  placeholder: "내용을 입력하세요",
	      	  minHeight:500,
	      	  maxHeight:550,
	      	  // 에디터 한글 설정
	      	  lang: "ko-KR",
	      	  // 에디터에 커서 이동 (input창의 autofocus라고 생각하시면 됩니다.)
	      	  focus : true,
	      	  toolbar: [
	      		    // 글꼴 설정
	      		    ['fontname', ['fontname']],
	      		    // 글자 크기 설정
	      		    ['fontsize', ['fontsize']],
	      		    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
	      		    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
	      		    // 글자색
	      		    ['color', ['forecolor','color']],
	      		    // 표만들기
	      		    ['table', ['table']],
	      		    // 글머리 기호, 번호매기기, 문단정렬
	      		    ['para', ['ul', 'ol', 'paragraph']],
	      		    // 줄간격
	      		    ['height', ['height']],
	      		    // 그림첨부, 링크만들기, 동영상첨부
	      		    ['insert',['picture','link','video']],
	      		  ],
	      		  // 추가한 글꼴
	      		fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
	      		 // 추가한 폰트사이즈
	      		fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
	        });
	    });
 	    </script>

    </div>

</body>
</html>