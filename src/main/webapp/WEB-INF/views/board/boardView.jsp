<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

      <!DOCTYPE html>
      <html>
        <head>
          <meta charset="UTF-8">
            <title>Insert title here</title>
            <%@ include file="../common/jscsspath.jsp" %>
              <style type="text/css">
                .no {
                  width: 156px;
                }
                .title {
                  width: 650px;
                }
                .date {
                  width: 150px;
                }
                .page-header {
                  place-content: center;
                }
                .name {
                  width: 110px;
                }
              </style>

              <script src="/resources/boardjs/boardlistview.js" charset="UTF-8"></script>

            </head>
           <body>
		<div class="page">
			<div class="page-main">
			<jsp:include page="../common/header.jsp"/>
				<div class="my-3 my-md-5">
					<div class="container">
						<div class="page-header"  style='float:right;'>
							<h1 class="page-title" style="margin-right: 500px;">
                  						게시판
                  						
							</h1>
									<div>
										<select name="listchange" id="listchange" class="form-control form-control-sm">
							<option value="10">10개씩</option>
							<option value="50">50개씩</option>
							<option value="100">100개씩</option>
							</select>
							</div>
						</div>
						
				
							
						<div class="card">
							<table class="table card-table" id="boardtable">
							</table>
						</div>
					</div>
				<div class="pageing" id="pageing">
				</div>
				</div>
			</div>
			<input type="hidden" value="${sessionScope.user.USERNAME }" id="USERNAME" name="USERNAME">
                        <input type="hidden" value="${sessionScope.user.USERNO }" id="USERNO" name="USERNO">
                        <jsp:include page="../common/footer.jsp"/>
                </div>
           </body>
                    </html>
                                <!-- 계층형 댓글 -->
    <%--          <div id="showhideinput${a.BOARDNO}" class="showhide2">
             	  <label class="boardLabel">댓글 : &nbsp;</label><input type="text" class="form-control" id="reinput${a.BOARDNO}" style=" width: 300px; display: inline-block;"> <button class="btn btn-primary btn-space" onclick="replyenroll(${a.BOARDNO})">작성</button>
					</div>
                  <div id="showhide${a.BOARDNO}" class="showhide2">
      			<c:forEach items="${ replylist }" var="b">
      			<c:if test="${b.BOARDNO eq a.BOARDNO }">
      			<c:if test="${b.REPLYDEPTH >= 2}">
      			<i class="fe fe-corner-down-right" style="color: #87abf3; margin-left:<c:out value="${20*b.REPLYDEPTH}"/>px;"></i>
      			</c:if>
      					<!-- 댓글 삭제여부 -->
      				<c:if test="${b.REPLYDELETE eq 'N'}">
      			${b.REPLYNAME} : ${b.REPLYCONTENT}
      			<!-- 깊이10이상 댓글 막기 -->
      				<c:if test="${b.REPLYDEPTH < 10}">
      			     <a href="#a" onclick="showview2(${b.REPLYNO})">댓글<i class="fe fe-edit-2" style="color: #87abf3;"></i></a>
      			     </c:if>
      			     <!-- 수정 삭제 -->
      			     <c:if test="${sessionScope.user.USERNO eq b.USERNO}">  						<!-- 맨위로 올라가지는걸 막기위해 #a 를씀  -->
      			     <a href="#a" >수정<i class="fe fe-edit-3" style="color: #87abf3;"></i></a> &nbsp; <a href="#a" onclick="replyDelete(${b.REPLYNO})">삭제<i class="fe fe-trash-2" style="color: #87abf3;"></i></a>
      			</c:if>
      			</c:if>
      			<c:if test="${b.REPLYDELETE eq 'Y'}">
      			삭제된 댓글 입니다.
      			</c:if>
      			<br>
      			<div id="showhideinput2${b.REPLYNO}" class="showhide3">
      			댓글 : <input type="text" id="reinput2${b.REPLYNO}" > <button class="btn btn-sm btn-primary" onclick="replyenroll2(${b.REPLYNO})" style="height: 31px;">작성</button>
      			</div>
      			</c:if>
      			</c:forEach>
                  </div> --%>
