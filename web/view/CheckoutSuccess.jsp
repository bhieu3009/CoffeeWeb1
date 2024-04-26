<%-- 
    Document   : CheckoutSuccess
    Created on : Mar 22, 2024, 12:49:27 AM
    Author     : MinHee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Checkout Success</title>
        <!-- Link CSS Bootstrap -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <!-- Link CSS tùy chỉnh -->
        <style>
            /* Tùy chỉnh CSS */
            body {
                padding: 50px;
            }
            .container {
                max-width: 600px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="alert alert-success" role="alert">
                <h4 class="alert-heading">Thank you for your order!</h4>
                <p>Your order has been successfully placed.</p>
                <hr>
                <p class="mb-0">An email confirmation has been sent to your email address.</p>
            </div>
            <div class="text-center">
                <a href="menu" class="btn btn-primary">Continue Shopping</a>
            </div>
        </div>
    </body>
</html>
