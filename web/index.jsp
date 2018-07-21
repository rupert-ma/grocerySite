
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*" %>
<%@page import="java.io.IOException" %>


<html>
<head>
    <title>Rupert's Grocery Page</title>
    <link rel="stylesheet" type="text/css" href="bootstrap.css">
</head>
<body>
<!-- Navbar / Title Section -->
<div class="navbar fixed-top" style="background-color: midnightblue; color: #cccccc">
    <div class="row">
        <div class="col-sm">
            <img src="groceries.jpg" width="45" height="45" alt="" class="border rounded-circle">
        </div>
    </div>
</div>
<!-- Title Section -->
<div class="container" style="background-color: lightgray; color: #4e555b; padding-top: 80px; padding-bottom: 20px">
    <div class="row">
        <div class="col-6 text-center">
            <h1 style="margin-top: 20px; margin-left: 60px; padding-bottom: 20px; border-bottom-style: solid;">Rupert
                Family </h1>
            <h2 style="margin-top: 20px; margin-left: 60px;"> Grocery List </h2>
        </div>
        <div class="col text-center">
            <img src="groceries.jpg" width="250" height="250" alt="" class="rounded-circle img-fluid">
        </div>
    </div>
</div>

<hr>
<div class="container-fluid">
    <div class="row text-center" style="margin-bottom: 20px">
        <div class="col-sm"></div>

        <!---------------- FORM SECTION -------------------->

        <div class="col-sm">
            <div class="container p-2">
                <form action="invServlet" method="post">
                    <div class="form-group">
                        <label>Enter below to Add Items to the Grocery List</label>
                        <input type="text" class="form-control" placeholder="Enter Item to Add" name="NewItem">
                        <input type="text" class="form-control" placeholder="How Many Do We Need?" name="NewQty">
                        <input type="submit" class="btn-block" name="submit" value="Submit"/>


                      </div>
                  </form>
                  <hr>
                  <form action="invServlet" method="post">
                      <div class="form-group">

                          <label>Enter below to Remove Items from the Grocery List</label>
                          <input type="text" class="form-control" placeholder="Enter Item to Remove" name="DelItem">
                          <input type="submit" class="btn-block" name="submit" value="Submit"/>


                            <hr>
                        </div>
                    </form>

                    <input type="reset" class="btn-block" name="submit" value="Reset"/>
                </div>
            </div>

            <div class="col-sm">
                <!-- Grocery List Section -->
                <div class="col-sm">
                    <h3 style="border-bottom: black">Grocery List</h3>
                    <ul class="list-group">
                        <jsp:include page="getInv.jsp" flush="true"/>



            </div>
        </div>
        <div class="col-sm"></div>
    </div>
</div>


<!-- Footer -->
<div class="jumbotron " style="background-color: midnightblue; color: #cccccc; margin-left: 0px; margin-right: 0px; margin-bottom: 0px;">
    <div class="row">
        <div class="col-sm text-center">
            <p>Coded by <a href="#" target="_blank">Michael Rupert</a>.</p>
        </div>
    </div>
</div>

</body>
</html>
