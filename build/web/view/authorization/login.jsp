<%-- 
    Document   : login
    Created on : Mar 11, 2024, 10:10:00 PM
    Author     : MinHee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <Style>
        .bg-image-vertical {
            position: relative;
            overflow: hidden;
            background-repeat: no-repeat;
            background-position: right center;
            background-size: auto 100%;
        }

        @media (min-width: 1025px) {
            .h-custom-2 {
                height: 100%;
            }
        }
    </Style>
    <body>
        <section class="vh-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6 text-black">

                        <div class="px-5 ms-xl-4">
                            <i class="fas fa-crow fa-2x me-3 pt-5 mt-xl-4" style="color: #709085;"></i>
                            <span class="h1 fw-bold mb-0">Fu Ca</span>
                        </div>

                        <div class="d-flex align-items-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">

                            <form action="login" method="post" style="width: 23rem;">

                                <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Log in</h3>
                                <p class="text-warning">${mess}</p>
                                <div class="form-outline mb-4">
                                    <input  name="user"  class="form-control form-control-lg" />
                                    <label class="form-label" for="form2Example18">Username</label>
                                </div>

                                <div class="form-outline mb-4">
                                    <input type="password" name="pass" id="form2Example28" class="form-control form-control-lg" />
                                    <label class="form-label" for="form2Example28">Password</label>
                                </div>

                                <div class="pt-1 mb-4">
                                    <button class="btn btn-info btn-lg btn-block" type="submit">Login</button>
                                </div>

                                <p class="small mb-5 pb-lg-2"><a class="text-muted" href="#!">Forgot password?</a></p>
                                <p>Don't have an account? <a href="signup" class="link-info">Register here</a></p>

                            </form>

                        </div>

                    </div>
                    <div class="col-sm-6 px-0 d-none d-sm-block">
                        <img src="https://wallpapercave.com/wp/wp6751471.jpg"
                             alt="Login image" class="w-100 vh-100" style="object-fit: cover; object-position: left;">
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
