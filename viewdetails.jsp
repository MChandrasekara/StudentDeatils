<%-- 
    Document   : productdetails
    Created on : Aug 19, 2017, 12:58:57 AM
    Author     : Manodh Chandrasekara
--%>

<%@page import="Hdb.Student"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <style>
            span {
                font-size: 13px;
                font-weight: normal;
            }
        </style>

    </head>
    <body>
        <%

            Session ses = Connection.NewHibernateUtil.getSessionFactory().openSession();
            Integer id = Integer.parseInt(request.getParameter("id"));
            Student stu = (Student) ses.load(Student.class, id);

        %>
        <div>
            <form method="POST" action="editdata">
                <input name="id" type="text" style="display: none" value="<%=stu.getId()%>">
                <div class="form-group">
                    <span>Student Name: </span><input name="name" type="text" style="border: none; font-weight: bold" value="<%=stu.getName()%>">
                </div>
                <div class="form-group">
                    <span>Age of Student: </span><input name="age" type="number" style="border: none; font-weight: bold" value="<%=stu.getAge()%>">
                </div>
                <div class="form-group">
                    <span>Gender: </span><input name="gender" type="text" style="border: none; font-weight: bold" value="<%=stu.getGender()%>">
                </div>
                <div class="form-group">
                    <span>Address: </span><input name="address" type="text" style="border: none; font-weight: bold" value="<%=stu.getAddress()%>">
                </div>
                <div class="form-group">
                    <span>Contact: </span><input name="contact" type="text" style="border: none; font-weight: bold" value="<%=stu.getContact()%>">
                </div>
                <input type="submit" value="EDIT STUDENT DETAILS" class="btn btn-primary">
            </form>
            <br>
            <form method="POST" action="removestudent">
                <input name="id" type="text" style="display: none" value="<%=stu.getId()%>">
                <input type="submit" value="DELETE STUDENT" class="btn btn-danger">
            </form>
        </div>
    </body>
</html>
