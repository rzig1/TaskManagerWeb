<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log In</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <style>
            /* Styling for logo */
            .logo {
                max-width: 200px;
                margin: 20px auto;
                display: block;
            }
            .colored {
                background-color: #58d9d3;
            }
            .text-colored {
                color: #58d9d3;
            }
            .text-colored:hover {
                color: #58d9d3;
            }
        </style>
    </head>
    <body class="bg-light">
        <div class="container">
            <div class="row justify-content-center mt-5">
                <div class="col-md-6 text-center">
                    <!-- Add logo -->
                    <img src="logotaskify.png" alt="Taskift Logo" class="logo">
                </div>
            </div>
            <div class="row justify-content-center mt-5">
                <div class="col-md-6">
                    <div class="card shadow-sm">
                        <div class="card-header colored text-white text-center">
                            <h4>Log In</h4>
                        </div>
                        <div class="card-body">
                            <form action="login.jsp" method="post">
                                <div class="form-group">
                                    <label for="login">Login (Email)</label>
                                    <input type="email" class="form-control" id="login" name="login" required>
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Password</label>
                                    <input type="password" class="form-control" id="pwd" name="pwd" required>
                                </div>
                                <div class="form-group text-center">
                                    <button type="submit" class="btn colored">Login</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="mt-3 text-center">
                        <a class="text-colored" href="index.jsp">Don't have an account? Sign up</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Add Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <%-- Start web service invocation --%>
        <%
            if (request.getMethod().equalsIgnoreCase("post")) {
                try {
                    // Call the web service
                    com.Service_Service service = new com.Service_Service();
                    com.Service port = service.getServicePort();

                    // Retrieve form data
                    String login = request.getParameter("login");
                    String pwd = request.getParameter("pwd");

                    // Call the login method to get the user ID
                    int userId = port.login(login, pwd);

                    if (userId != -1) { // Successful login
                        // Save user data in session
                        session.setAttribute("userId", userId);
                        session.setAttribute("userEmail", login);

                        // Redirect to home page
                        response.sendRedirect("home.jsp");
                    } else {
                        out.println("<div class='alert alert-danger text-center mt-3'>Invalid login credentials. Please try again.</div>");
                    }
                } catch (Exception ex) {
                    out.println("<div class='alert alert-danger text-center mt-3'>Error: " + ex.getMessage() + "</div>");
                }
            }
        %>
        <%-- End web service invocation --%>
    </body>
</html>
