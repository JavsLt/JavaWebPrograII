<%-- 
    Document   : index
    Created on : 17 oct 2023, 23:42:14
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Font Awesome -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
            />
        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
            />
        <!-- MDB -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.css"
            rel="stylesheet"
            />

        <title>JSP Page</title>
    </head>
    <body>


        <section class="vh-100" style="background-color: #212b35;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-c   center h-100" >
                    <div class="col col-xl-10">
                        <div class="card" style="border-radius: 1rem; ">
                            <div class="row g-0">
                                <div class="col-md-8 d-none d-md-block">
                                    <img src="Imagenes/logoJav.png"
                                         alt="login form" class="img-fluid" style="padding-top: 85px; padding-left: 30px; border-radius: 1rem 0 0 1rem;" />
                                </div>
                                <div class="col-md-4 d-flex align-items-center">
                                    <div class="card-body p-4 p-lg-5 text-black">

                                        <form class="row g-3" action="Validar" method="POST" >

                                            <div class="form-outline mb-4">
                                                <input type="text" name="txtuser" class="form-control" required />
                                                <label for="validationDefault01" class="form-label">Usuario</label>
                                            </div>
                                            <div class="form-outline mb-4">
                                                <input type="password" name="txtpass" class="form-control" required />
                                                <label for="validationDefault02" class="form-label">Contraseña</label>
                                            </div>

                                            <div class="mb-4 align-items-center">
                                                <input type="submit" name="accion" value="Ingresar" class="btn btn-dark "/>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>



    </body>

    <!-- MDB -->
    <script
        type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"
    ></script>

</html>
