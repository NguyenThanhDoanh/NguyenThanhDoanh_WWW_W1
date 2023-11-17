<%@ page import="java.util.ArrayList" %>
<<<<<<< HEAD
<%@ page import="java.util.List" %>
<%@ page import="vn.iuh.edu.fit.models.Account" %>
<%@ page import="vn.iuh.edu.fit.models.Role" %>
<%@ page import="vn.iuh.edu.fit.repositories.AccountRepositories" %>
=======

<%@ page import="java.util.List" %>
<%@ page import="vn.iuh.edu.fit.models.Account" %>
<%@ page import="vn.iuh.edu.fit.models.Role" %>

>>>>>>> 0c1bb70 (initial commit)
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <<<<<<< HEAD
    =======
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
          integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    >>>>>>> 0c1bb70 (initial commit)
    <title>dashboard</title>
</head>
<body>
<div id="wrapper">
    <header>
        <<<<<<< HEAD
        <div class="container">
            <%
                Account acc = (Account) request.getAttribute("user");
                String roleName = (String) request.getAttribute("rolename");
                System.out.println("view 0:>>>" + acc);
                if (acc != null) {
            %>

            <h3>xin chao: <%=acc.getFullName()%>
            </h3>
            <ul>

            </ul>
            <li>username:<%=acc.getFullName()%>
            </li>
            <li>email:<%=acc.getEmail()%>
            </li>
            <li>phone:<%=acc.getPhone()%>
            </li>
            <li>role:<%=roleName%>
            </li>
            <%
                }
            %>
                =======
                <div class="container" style="display: flex;justify-content: space-between; align-items: center">
                    <div class="left_content">
                        <%
                            Account acc = (Account) request.getAttribute("user");
                            String roleName = (String) request.getAttribute("rolename");

                            if (acc != null) {
                        %>

                        <h3>xin chao: <%=acc.getFullName()%>
                        </h3>
                        <ul>

                        </ul>
                        <li>username:<%=acc.getFullName()%>
                        </li>
                        <li>email:<%=acc.getEmail()%>
                        </li>
                        <li>phone:<%=acc.getPhone()%>
                        </li>
                        <li>role:<%=roleName%>
                        </li>
                        <%
                            }
                        %>
                    </div>
                    <div class="actions">
                        <form action="ControllerServlet" method="post">
                            <button name="action" value="logout" class="btn btn-danger text-light">Logout</button>
                        </form>
                    </div>
                    >>>>>>> 0c1bb70 (initial commit)

        </div>

    </header>
    <form action="ControllerServlet" method="post" id="content">
        <%

            ArrayList<Account> accounts = (ArrayList<Account>) request.getAttribute("users");
            System.out.println("view:>>>" + accounts);
            if (accounts != null) {
<<<<<<< HEAD
                System.out.println("--------");
=======

                System.out.println("aloaloalo");
>>>>>>> 0c1bb70 (initial commit)

        %>

        <div id="wrapper_add" class="mt-3 mb-3">

            <div class="container">
                <<<<<<< HEAD
                <h2 class="text-center">User Role</h2>
                =======
                <h2 class="text-center">Manage User</h2>
                >>>>>>> 0c1bb70 (initial commit)
                <div class="row">

                    <div class="col-md-4">
                        <div class="mb-3">
                            <label class="form-label">id</label>
                            <<<<<<< HEAD
                            <input name="id" type="text" class="form-control"
                            =======
                            <input name="id" id="id" type="text" class="form-control"
                            >>>>>>> 0c1bb70 (initial commit)
                            >

                        </div>
                    </div>


                    <div class="col-md-4">
                        <div class="mb-3">
                            <label class="form-label">password</label>
                            <<<<<<< HEAD
                            <input name="password" type="password" class="form-control"
                            =======
                            <input id="password" name="password" type="password" class="form-control"
                            >>>>>>> 0c1bb70 (initial commit)
                            >

                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="mb-3">
                            <label class="form-label">username</label>
                            <<<<<<< HEAD
                            <input name="username" type="text" class="form-control"
                            =======
                            <input id="username" name="username" type="text" class="form-control"
                            >>>>>>> 0c1bb70 (initial commit)
                            >

                        </div>
                    </div>


                </div>

                <div class="row">
                    <div class="col-md-4">
                        <div class="mb-3">
                            <label class="form-label">phone</label>
                            <<<<<<< HEAD
                            <input name="phone" type="text" class="form-control"
                            =======
                            <input id="phone" name="phone" type="text" class="form-control"
                            >>>>>>> 0c1bb70 (initial commit)
                            >

                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="mb-3">
                            <label class="form-label">email</label>
                            <<<<<<< HEAD
                            <input name="email" type="email" class="form-control"
                            =======
                            <input id="email" name="email" type="email" class="form-control"
                            >>>>>>> 0c1bb70 (initial commit)
                            >

                        </div>

                    </div>

                    <div class="col-md-4">
                        <div class="mb-3">
                            <label class="form-label">status</label>
                            <input disabled="disabled" value="1" name="status" type="text" class="form-control"
                            >

                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <div class="mb-3">
                            <<<<<<< HEAD
                            <select name="role" class="form-select" aria-label="Default select example">
                                =======
                                <select id="role" name="role" class="form-select" aria-label="Default select example">
                                    >>>>>>> 0c1bb70 (initial commit)


                                <%
                                    ArrayList<Role> roles = (ArrayList<Role>) request.getAttribute("roles");

                                    if (roles != null && roles.size() > 0) {

<<<<<<<HEAD
                                        for (Role x :
                                                roles) {
=======
                                            for (Role x : roles) {
>>>>>>>0 c1bb70(initial commit)
                                %>
                                <option value=<%= x.getRoleId()%>><%= x.getRoleName() %>
                                </option>
                                <%
                                        }
                                    }
                                %>
                                    <<<<<<< HEAD


                                    =======
                                    >>>>>>> 0c1bb70 (initial commit)
                            </select>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <<<<<<< HEAD
                    <button type="submit" name="action" value="addUser">Submit</button>
                </div>
            </div>

            =======
            <button type="submit" name="action" value="addUser" class="btn btn-primary">Submit</button>
        </div>
</div>


>>>>>>> 0c1bb70 (initial commit)
            <div class="container">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">username</th>
                        <th scope="col">email</th>
                        <th scope="col">phone</th>
                        <th scope="col">status</th>
                        <th scope="col">actions</th>
                    </tr>
                    </thead>
                    <<<<<<< HEAD

                    =======
                    >>>>>>> 0c1bb70 (initial commit)
                    <tbody>
                    <%
                        for (Account x :
                                accounts) {
                    %>
                    <tr>
                        <th scope="row"><%=x.getAccountId()%>
                        </th>
                        <td><%=x.getFullName()%>
                        </td>
                        <td><%=x.getEmail()%>
                        </td>
                        <td><%=x.getPhone()%>
                        </td>
                        <td><%=x.getStatus()%>
                        </td>
                        <<<<<<< HEAD
                        <td style="display: flex;gap: 20px">
                            <div>
                                <form action="ControllerServlet" method="POST">
                                    <input type="hidden" name="id" value="<%=x.getAccountId()%>">
                                    <input type="hidden" name="action" value="removeUser">
                                    <button type="submit">Remove</button>
                                </form>
                            </div>
                            <div>
                                <input type="text" hidden="hidden" name="id_user" value=<%=x.getAccountId()%>>
                                <input type="hidden" name="action" value="UpdateUser">
                                <button type="submit">update</button>

                            </div>
                        </td>
                        =======


                        <td style="display: flex;gap: 20px;align-items: center">
                            <div>
                                <input type="text" hidden="hidden" name="id_user" value=<%=x.getAccountId()%>>
                                <button class="btn btn-danger" name="action" value="removeUser">Remove</button>
                            </div>
                            <div>
                                <input type="text" hidden="hidden" name="id_user" value=<%=x.getAccountId()%>>
                                <button class="btn btn-primary" name="action" value="UpdateUser">update</button>
                            </div>

                            <%--                            <i   onclick="getUserInfor(<%=x.getAccountId()%>,<%=x.getFullName()%>,<%=x.getPassword()%>,<%=x.getEmail()%>,<%=x.getPhone()%>)" class="fa-solid fa-pen-to-square"></i>--%>
                        </td>


                        >>>>>>> 0c1bb70 (initial commit)
                    </tr>
                    <%
                        }

                    %>

                    </tbody>
                </table>
                    <%

} else {

%>

                    <%
    }
%>

    </form>
</div>


</div>
</body>
<<<<<<< HEAD
=======
<script src="..//js/index.js"></script>
>>>>>>> 0c1bb70 (initial commit)
</html>