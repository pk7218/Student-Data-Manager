<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isErrorPage="true"%>
<%@include file="navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student data</title>
<link href="style.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<style>
tbody tr td, th {
	padding: 8px;
	border: 1px solid black;
}

.custom-color {
	background: #42BBFC;
}

th {
	color: black;
}

table {
	align-self: center;
	margin-top: -50px;
}
</style>
<script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
</head>
<body>

	<div class="row container-fluid">

		<div class="col-md-12">

			<div class="rightside">

				<%
				HttpSession s=request.getSession(false);
				String user=(String)s.getAttribute("user");
				if(user!=null)
				{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost/adv_student_manager", "root", "");
				PreparedStatement ps = con.prepareStatement("Select * from student_table");
				ResultSet set = ps.executeQuery();
				%>
				<h2 style="text-align: center;" class="mt-3">Student Data</h2>
				<table class="table table-success table-striped">
					<tbody>
						<tr>
							<th>Sr. No</th>
							<th>Name</th>
							<th>Duration</th>
							<th>Course</th>
						</tr>
						<%
						while (set.next()) {
						%>
						<tr>

							<td><%=set.getInt("s_id")%></td>
							<td><%=set.getString("s_name")%></td>
							<td><%=set.getString("duration")%></td>
							<td><%=set.getString("course")%></td>
							<br>

						</tr>
						<%
						}
				}
				else
				{
					session.invalidate();
					response.sendRedirect("login.html");
				}
						%>

					</tbody>
				</table>

			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>