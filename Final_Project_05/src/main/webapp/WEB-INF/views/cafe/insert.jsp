<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
</head>
<body>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
function swalSuccess(seq){
	Swal.fire({
		title:'작성 성공',
		text: '새 글 작성에 성공하였습니다.',
		icon: 'success',
		confirmButtonColor: '#198754',
		confirmButtonText: '확인'
	}).then((result) => {
		if (result.value) {
			location.href="${pageContext.request.contextPath}/cafe/list.jsp";
	  }
	})
}
function swalFail(seq){
	Swal.fire({
		title:'작성 실패',
		text: '새 글 작성에 실패하였습니다.',
		icon: 'error',
		confirmButtonColor: '#198754',
		confirmButtonText: '재시도'
	}).then((result) => {
		if (result.value) {
			location.href="${pageContext.request.contextPath}/cafe/private/insertform.jsp";
	  }
	})
}
</script>
<%-- 
<%if(isSuccess){ %>
	<script>
		swalSuccess();
	</script>
	<%}else{ %>
	<script>
		swalFail();
	</script>
	<%} %>
--%>
</body>
</html>