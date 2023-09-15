<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>


<form action="ControllerServlet" method="post">
    <label class="form-label">User name</label>
    <input name="username" class="form-control" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
    <label class="form-label">Password</label>
    <input name="password" type="password" class="form-control">
    <button name="action" value="login" type="submit" class="btn btn-primary">Submit</button>
</form>

</body>
</html>