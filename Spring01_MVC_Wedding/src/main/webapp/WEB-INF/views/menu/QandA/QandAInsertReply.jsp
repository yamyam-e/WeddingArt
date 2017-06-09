<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
input:focus, textarea:focus {
	outline: none;
}
</style>

<div class="modal fade" id="QandAInsertReplyPop" role="dialog"
	style="text-align: center;">
	<div class="modal-dialog"
		style="background-color: white; height: 300px; width: 600px;">
		<div class="modal-content">
			<div class="modal-body">
				<h2 style="color: dimgray"><strong>답변 작성</strong></h2>
				<div class="col-sm-15" style="background-color: PeachPuff; height: 3px;"></div><br>
				
				<form action="/wedding/QandAInsertReply" method="post">
					<table border="1" style="text-align: center; width: 100%">
						<tr>
							<td style="color: dimgray;"><strong>제 목</strong></td>
							<td style="color: black;"><input type="text" name="title"
								style="width: 100%; border: 0;" required="required"/></td>
						</tr>
						<tr>
							<td style="color: dimgray;"><strong>작 성 자</strong></td>
							<td style="color: black;"><input type="text" name="writer"
								style="width: 100%; border: 0;" required="required"/></td>
						</tr>
						<tr>
							<td style="color: dimgray;"><strong>내 용</strong></td>
							<td style="color: black;"><textarea rows="8" cols="20" name="contents"
									style="padding-top: 10px; width: 100%; border: 0;" required="required"></textarea>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="hidden" name="num" value="${param.num}">
<!-- 								<input type="submit" value="글저장"> -->
							</td>
						</tr>
					</table>
					<br>
					<a href="/wedding/QandASelectAll" class="btn btn-warning01">
						<span class="glyphicon glyphicon-share"></span>	
						글 전체보기
					</a>&nbsp;
					<button type="submit" class="btn btn-warning01">
						<span class="glyphicon glyphicon-edit"></span>
						저장하기
					</button>
				</form>
			</div>
		</div>
	</div>
</div>
