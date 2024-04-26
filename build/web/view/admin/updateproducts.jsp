<%-- 
    Document   : updateproducts
    Created on : Mar 18, 2024, 11:34:01 PM
    Author     : MinHee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Food</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <style>
            body {
                padding: 20px;
                font-family: 'Roboto', sans-serif;
                background-color: #f8f9fa;
            }
            .container {
                background-color: #ffffff;
                border-radius: 10px;
                padding: 20px;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
            }
            h1 {
                color: #343a40;
                text-align: center;
                margin-bottom: 30px;
            }
            .form-group {
                margin-bottom: 20px;
            }
            label {
                color: #343a40;
                font-weight: 600;
            }
            .form-control {
                border: 1px solid #ced4da;
                border-radius: 5px;
                padding: 10px;
            }
            .btn-primary {
                background-color: #007bff;
                border-color: #007bff;
            }
            .btn-primary:hover {
                background-color: #0056b3;
                border-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Update Food</h1>
            <form action="updateproduct" method="post">
                <input hidden="" name="id" value="${requestScope.product.id}">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control" id="name" value="${requestScope.product.name}" name="name">
                </div>
                <div class="form-group">
                    <label for="image">Image:</label>
                    <input type="text" class="form-control" id="image" value="${requestScope.product.image}" name="image">
                </div>
                <div class="form-group">
                    <label for="price">Price:</label>
                    <input type="text" class="form-control" id="price" value="${requestScope.product.price}" name="price">
                </div>
                <div class="form-group">
                    <label for="stockquantity">Stock Quantity:</label>
                    <input type="text" class="form-control" id="stockquantity" value="${requestScope.product.stockquantity}" name="stockquantity">
                </div>
                <div class="form-group">
                    <label for="description">Description:</label>
                    <input type="text" class="form-control" id="description" value="${requestScope.product.description}" name="description">
                </div>
                <div class="form-group">
                    <label for="category">Category:</label>
                    <input type="text" class="form-control" id="category" value="${requestScope.product.category.id}" name="category">
                </div>
                <button type="submit" class="btn btn-primary">Save</button>
            </form>
        </div>

        <!-- Bootstrap JS and jQuery -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>