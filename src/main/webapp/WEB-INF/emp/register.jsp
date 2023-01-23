
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript">
		
	</script>
 </head>
	
<body>
	<div class="container-fluid">
			
			<form role="form" class="form-horizontal"	action="/ongo/write.do" 
				method="POST"		name="myform">
				<fieldset>
					<div id="legend">
					</div>
					<div class="form-group" style="padding: 40px">
						<p class="centered">
							<img src="/ongo/images/myphoto.jpg" 
							 id="userImage" style="width: 100px">
						</p>
						<div>
							<input type="file" name="userImage"
								onchange="document.getElementById('userImage').src = window.URL.createObjectURL(this.files[0])"
								accept="image/*">
						</div>
						
					</div>
					
					
					
					
					<div class="form-group">
						<!-- 아이디-->
						<label class="control-label col-sm-2" for="grade">아이디</label>
						<div class="col-sm-3">
							<input type="text" id="id" name="id" 
							placeholder="아이디"
								class="form-control" minlength="3" required>
						</div>
					</div>
					
					
					
					
					<div class="form-group">
						<!-- 비밀번호-->
						<label class="control-label col-sm-2" for="grade">비밀번호</label>
						<div class="col-sm-3">
							<input type="text" id="pass" name="pass" 
							placeholder="비밀번호"
								class="form-control" minlength="3" required>
						</div>
					</div>
					
					
		
					
					
					
					<div class="form-group">
						<!-- 이름-->
						<label class="control-label col-sm-2" for="grade">이름</label>
						<div class="col-sm-3">
							<input type="text" id="name" name="name" placeholder="이름"class="form-control" minlength="3" required>
						</div>
					</div>
					
					
					
					
					
					
					
					
					
					<div class="form-group">
						<!-- 전화번호 -->
						<label class="control-label col-sm-2" for="orgcode">전화번호</label>
						<div class="col-sm-3">
							<input type="text" id="tel" name="tel" placeholder="전화번호"class="form-control" minlength="3" required>
						</div>
					</div>
					
					<div class="form-group">
						<!-- 주소 -->
						<label class="control-label col-sm-2" for="orgcode">주소</label>
						<div class="col-sm-3">
							<input type="text" id="addr" name="addr" placeholder="주소"class="form-control" minlength="3" required>
						</div>
					</div>
					
					<div class="form-group">
						<!-- 이메일 -->
						<label class="control-label col-sm-2" for="orgcode">이메일</label>
						<div class="col-sm-3">
							<input type="text" id="email" name="email" placeholder="이메일"class="form-control" minlength="3" required>
						</div>
					</div>
					
					
					
					
					
					<div class="form-group">
						<!-- Button -->
						<div class="col-sm-3 col-sm-offset-2">
							<input type="submit" value="가입하기" class="btn btn-success"/>
						</div>
					</div>
				</fieldset>
		</form>
			<div><a href="/erp/emp/list.do">회원목록보기</a></div>
	</div>
	
</body>
</html>