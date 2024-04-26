<%-- 
    Document   : insertedproducts
    Created on : Mar 18, 2024, 5:08:14 PM
    Author     : MinHee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Form</title>
        <!-- Bootstrap CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <style>
            /* Additional CSS styles can be added here */
        </style>
    </head>
    <body>

        <div class="container">
            <h2>Add New Product</h2>
            <form action="insertedproduct" method="post">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="price">Price:</label>
                    <input type="text" class="form-control" id="price" name="price" required>
                </div>
                <div class="form-group">
                    <label for="image">Image:</label>
                    <input type="text" class="form-control" id="image" name="image" required>
                </div>
                <div class="form-group">
                    <label for="stock">Stock Quantity:</label>
                    <input type="text" class="form-control" id="stock" name="stock" required>
                </div>
                <div class="form-group">
                    <label for="description">Description:</label>
                    <input type="text" class="form-control" id="description" name="description" required>
                </div>
                <div class="form-group">
                    <label for="category">Category:</label>
                    <input type="text" class="form-control" id="category" name="category" required>
                </div>
                <button type="submit" class="btn btn-primary">Save</button>
            </form> 
        </div>

        <!-- Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    </body>
</html>
