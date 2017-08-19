<%-- 
    Document   : index
    Created on : Aug 18, 2017, 1:33:24 AM
    Author     : Manodh Chandrasekara
--%>

<%@page import="java.util.List"%>
<%@page import="Hdb.Student"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" href="bootstrap/bootstrap.min.css">

        <script>

            function addnew() {
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (xhttp.readyState == 4 && xhttp.status == 200) {
                        document.getElementById("addnew").innerHTML = xhttp.responseText;
                    }
                };
                xhttp.open("POST", "addnew.jsp", true);
                xhttp.send();
            }

            function viewDetails(stu) {
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (xhttp.readyState == 4 && xhttp.status == 200) {
                        document.getElementById("addnew").innerHTML = xhttp.responseText;
                    }
                };
                xhttp.open("POST", "viewdetails.jsp?id=" + stu, true);
                xhttp.send();
            }
        </script>

    </head>
    <body>
        <div  class="container" style="margin-top: 30px">
            <div class="row">
                <h2 style="font-size: 26px; text-transform: uppercase">Student Details</h2>
                <br>

                <div class="col-sm-6">
                    <table border="1">
                        <thead></thead>

                        <tbody>
                            <%
                                int fr = 0;
                                int max = 20;

                                if (request.getParameter("fr") != null) {
                                    int x = Integer.parseInt(request.getParameter("fr"));
                                    fr = x * max;
                                }

                                Session ses = Connection.NewHibernateUtil.getSessionFactory().openSession();
                                Criteria cr = ses.createCriteria(Student.class);

                                int resultsize = cr.list().size();
                                int pages = 0;
                                if (resultsize % max == 0) {
                                    pages = resultsize / max;
                                } else {
                                    pages = resultsize / max + 1;
                                }

                                cr.setFirstResult(fr);
                                cr.setMaxResults(max);

                                List<Student> li = cr.list();
                                int z = 1;
                                for (Student stu : li) {
                                    if (z % 2 == 1) {

                                    }

                            %>

                            <tr>
                                <td style="display: none"><%=stu.getId()%></td>
                                <td style="width: 250px"><lable onclick='viewDetails(<%=stu.getId()%>)' class="btn"><%=stu.getName()%></lable></td>
                            </tr>

                        <%
                            if (z % 2 == 0) {
                        %>

                        <%
                                }
                                z++;
                            }
                            for (int i = 0; i < pages; i++) {
                        %>

                        </tbody>
                    </table>
                    <br><br>
                    <button onclick="addnew()" class="btn btn-warning" type="button">Add New Student</button>

                    <br>
                    <a class="pagination hidden" href="index.jsp?fr=<%=i%>"><button><%=(i + 1)%></button></a>

                    <%
                        }
                    %>
                </div>

                <div class="col-sm-4">
                    <div id="addnew" style="width: 50%">

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
