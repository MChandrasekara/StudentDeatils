<%-- 
    Document   : addnew
    Created on : Aug 18, 2017, 9:19:52 PM
    Author     : Manodh Chandrasekara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            label {
                font-size: 13px;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <form method="POST" action="addnew">
            <div class="form-group">
            <label>Student Name :</label> <input name="name" type="text" class="form-control">
            </div>
            <div class="form-group">
            <label>Age :</label> <input name="age" type="number" class="form-control">
            </div>
            <div class="form-group">
            <label>Gender :</label> <input name="gender" type="text" class="form-control">
            </div>
            <div class="form-group">
            <label>Address :</label> <input name="address" type="text" class="form-control">
            </div>
            <div class="form-group">
            <label>Contact :</label> <input name="contact" type="text" class="form-control">
            </div>
            <br>
            <input type="submit" class="btn btn-primary pull-right" value="ADD STUDENT">
        </form>
    </body>
</html>
