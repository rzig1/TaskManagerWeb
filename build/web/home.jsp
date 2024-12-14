<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.TaskService_Service"%>
<%@page import="com.TaskService"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Task Manager</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .container { margin-top: 50px; }
        .task-table th, .task-table td { text-align: center; }
        .task-table th { background-color: #f8f9fa; }
        .task-card { margin-top: 20px; }
        .task-card .card-header { font-weight: bold; }
        .colored{
             background-color: #58d9d3;
        }
        .red-colored{
            background-color: #58d9d3;
        }
    </style>
</head>

<body>
    <%
    // Check if user is logged in
    Integer userId = (Integer) session.getAttribute("userId");
    if (userId == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    %>

    <div class="container">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h1>Task Manager</h1>
            <div>
                <span class="mr-3">Welcome, Be Organised</span>
                <a style="color:white;" href="logout.jsp" class="btn colored">Logout</a>
            </div>
        </div>

        <!-- Create Task Form -->
        <div class="card task-card">
            <div class="card-header">Create Task</div>
            <div class="card-body">
                <form action="home.jsp" method="post">
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control" id="title" name="title" required>
                    </div>
                    <div class="form-group">
                        <label for="status">Status</label>
                        <select class="form-control" id="status" name="status" required>
                            <option value="pending">Pending</option>
                            <option value="completed">Completed</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="due_date">Due Date</label>
                        <input type="date" class="form-control" id="due_date" name="due_date" required>
                    </div>
                    <div class="form-group">
                        <label for="hour">Due Time</label>
                        <input type="time" class="form-control" id="hour" name="hour" required>
                    </div>
                    <button type="submit" class="btn colored" name="createTask">Create Task</button>
                </form>
            </div>
        </div>

        <!-- Display Tasks -->
        <div class="card task-card mb-5">
            <div class="card-header">Tasks List</div>
            <div class="card-body">
                <%
                TaskService_Service service = null;
                TaskService port = null;
                List<String> tasks = new ArrayList<String>();
                
                try {
                    service = new TaskService_Service();
                    port = service.getTaskServicePort();
                    tasks = port.getUserTasks(userId);
                } catch (Exception e) {
                    out.println("<div class='alert alert-danger'>Error connecting to service: " + e.getMessage() + "</div>");
                }
                
                if (tasks != null && !tasks.isEmpty()) {
                %>
                <table class="table table-striped task-table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Title</th>
                            <th>Status</th>
                            <th>Due Date & Time</th>
                            <th>Date Created</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        for (String task : tasks) {
                            String[] parts = task.split(", ");
                            String id = parts[0].split(": ")[1];
                            String title = parts[1].split(": ")[1];
                            String status = parts[2].split(": ")[1];
                            String dueDate = parts[3].split(": ")[1];
                        %>
                        <tr>
                            <td><%= id %></td>
                            <td><%= title %></td>
                            <td><%= status %></td>
                            <td><%= dueDate %></td>
                            <td><%= parts[4].split(": ")[1] %></td>
                            <td>
                                <button type="button" class="btn colored btn-sm" 
                                        onclick="populateUpdateForm('<%= id %>', '<%= title %>', '<%= status %>', '<%= dueDate %>')"
                                        data-toggle="modal" data-target="#updateModal">
                                    Update
                                </button>
                                <form action="home.jsp" method="post" style="display:inline;">
                                    <input type="hidden" name="idtask" value="<%= id %>">
                                    <button type="submit" class="btn btn-danger btn-sm" name="deleteTask">Delete</button>
                                </form>
                            </td>
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
                <% } else { %>
                    <p class="text-center">No tasks found.</p>
                <% } %>
            </div>
        </div>

        <!-- Update Task Modal -->
        <div class="modal fade" id="updateModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Update Task</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="home.jsp" method="post">
                        <div class="modal-body">
                            <input type="hidden" id="update_idtask" name="idtask">
                            <div class="form-group">
                                <label for="update_title">Title</label>
                                <input type="text" class="form-control" id="update_title" name="title" required>
                            </div>
                            <div class="form-group">
                                <label for="update_status">Status</label>
                                <select class="form-control" id="update_status" name="status" required>
                                    <option value="pending">Pending</option>
                                    <option value="completed">Completed</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="update_due_date">Due Date</label>
                                <input type="date" class="form-control" id="update_due_date" name="due_date" required>
                            </div>
                            <div class="form-group">
                                <label for="update_hour">Due Time</label>
                                <input type="time" class="form-control" id="update_hour" name="hour" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn colored" name="updateTask">Update Task</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <%
        // Handle Create Task
        if (request.getParameter("createTask") != null && port != null) {
            String title = request.getParameter("title");
            String status = request.getParameter("status");
            String dueDate = request.getParameter("due_date");
            String hour = request.getParameter("hour") + ":00"; // Add seconds
            
            try {
                boolean result = port.createTask(title, status, dueDate, hour, userId);
                if (result) {
                    %><div class='alert alert-success mt-3'>Task created successfully!</div><%
                } else {
                    %><div class='alert alert-warning mt-3'>Failed to create task.</div><%
                }
                response.sendRedirect("home.jsp");
            } catch (Exception ex) {
                %><div class='alert alert-danger mt-3'>Error creating task: <%= ex.getMessage() %></div><%
            }
        }

        // Handle Update Task
        if (request.getParameter("updateTask") != null && port != null) {
            try {
                int idtask = Integer.parseInt(request.getParameter("idtask"));
                String title = request.getParameter("title");
                String status = request.getParameter("status");
                String dueDate = request.getParameter("due_date");
                String hour = request.getParameter("hour") + ":00"; // Add seconds
                
                boolean result = port.updateUserTask(idtask, title, status, dueDate, hour, userId);
                if (result) {
                    %><div class='alert alert-success mt-3'>Task updated successfully!</div><%
                } else {
                    %><div class='alert alert-warning mt-3'>Failed to update task.</div><%
                }
                response.sendRedirect("home.jsp");
            } catch (Exception ex) {
                %><div class='alert alert-danger mt-3'>Error updating task: <%= ex.getMessage() %></div><%
            }
        }

        // Handle Delete Task
        if (request.getParameter("deleteTask") != null && port != null) {
            try {
                int idtask = Integer.parseInt(request.getParameter("idtask"));
                boolean result = port.deleteUserTask(idtask, userId);
                if (result) {
                    %><div class='alert alert-success mt-3'>Task deleted successfully!</div><%
                } else {
                    %><div class='alert alert-warning mt-3'>Failed to delete task.</div><%
                }
                response.sendRedirect("home.jsp");
            } catch (Exception ex) {
                %><div class='alert alert-danger mt-3'>Error deleting task: <%= ex.getMessage() %></div><%
            }
        }
        %>
    </div>

    <!-- Bootstrap JS & jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Update Form Population Script -->
    <script>
        function populateUpdateForm(id, title, status, dueDateTime) {
            document.getElementById('update_idtask').value = id;
            document.getElementById('update_title').value = title;
            document.getElementById('update_status').value = status.toLowerCase();
            
            // Split the datetime into date and time
            const [date, time] = dueDateTime.split(' ');
            document.getElementById('update_due_date').value = date;
            document.getElementById('update_hour').value = time.substring(0, 5); // Get HH:mm only
        }
    </script>
</body>
</html>