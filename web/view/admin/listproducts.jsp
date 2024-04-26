<%-- 
    Document   : listproducts
    Created on : Mar 18, 2024, 12:21:07 AM
    Author     : MinHee
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>List of Products</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap-theme.min.css">
        <style>
            .product-img {
                height: 150px;
                width: 150px;
            }
            .btn-update, .btn-delete {
                margin-right: 5px;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Product Management</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Dropdown
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>

        <div class="container">
            <h1>List of Products</h1>
            <!-- First Taskbar -->
            <div class="taskbar">
                <button class="btn btn-primary">Button 1</button>

            </div>

            <!-- Product Table -->
            <table class="table table-bordered product-table">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Image</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${requestScope.products}" var="p">
                        <tr>
                            <td>${p.name}</td>
                            <td>${p.price}</td>
                            <td><img class="product-img" src="${p.image}"></td>
                            <td>
                                <button class="btn btn-primary btn-update" onclick="Update(${p.id})">Update</button><!-- goi den ham function update  -->
                                <button class="btn btn-danger btn-delete" onclick="Delete(${p.id})">Delete</button>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <!-- Insert Button -->
            <a href="insertedproduct" class="btn btn-success">Insert</a>

            <!-- Second Taskbar -->

        </div>

        <!-- Bootstrap JS and jQuery -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


        <script>
                                    function Update(id) {
                                        window.location.href = "updateproduct?fid=" + id;  //truyen vao onclick hien tham so id vao url
                                    }
                                    function Delete(id) {
                                        var c = confirm("arre you suaaa");
                                        if (c) {    // c o day la true 
                                            window.location.href = "deleteproduct?fid=" + id;//truyen vao onlick , truyen id sang dang fid sang deletecontroller
                                        }
                                    }
        </script>
    </body>
</html>
