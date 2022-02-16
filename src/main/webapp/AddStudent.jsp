<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container-fluid" style="background: #CDDCDC;">
<div class="hero">
<fieldset style="border: 1px solid white; padding:18px; ">



<legend style="margin-top:-20px;">Student Details   </legend>



        <form  action="SrvAddStudent" method="get">
            <div class="row">

                 <div class="input-grp mt-3">
                <input type="text" id="name" name="name" style="border: 1px solid black;color:#000; " required>
                <label for="name" style="color:black; margin-left:7px;">Full Name.</label>
            </div>
            <div class="input-grp mt-3">
                <input type="email" id="mail" name="email" style="border: 1px solid black; color:#000;" required>
                <label for="mail" style="color:black; margin-left:7px;">Mail Id.</label>
            </div>
            <div class="input-grp">
                <input type="text" id="mobile" name="mobile" style="border: 1px solid black;color:#000; " required>
                <label for="mobile" style="color:black;  margin-left:7px;">Mobile</label>
            </div>
            <div class="input-grp">
                <input type="text" id="duration" name="duration" style="border: 1px solid black; color:#000;" required>
                <label for="duration" style="color:black;  margin-left:7px;">Course Duration.</label>
            </div>
            <div class="input-grp">
                <input type="text" id="course" name="course" style="border: 1px solid black;color:#000; " required>
                <label for="course" style="color:black;  margin-left:7px;">Course.</label>
            </div>
           
            <button type="submit" class="btn-dark" style="color:#fff;">SUBMIT</button>
        </form>
             
</fieldset>
            </div>
           

    </div>
    </div>
    
    <!-- bootstrap js imported online -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>