<%-- 
    Document   : Principal
    Created on : 31 oct 2023, 1:02:38
    Author     : Usuario
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
        <!-- Navbar-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid justify-content-between">
                <!-- Left elements -->
                <div class="d-flex">
                    <!-- Brand -->
                    <a class="navbar-brand me-2 mb-1 d-flex align-items-center" href="#">
                        <img
                            src="Imagenes/logoJav.png"
                            height="35"
                            alt="MDB Logo"
                            loading="lazy"
                            style="margin-top: 2px;"
                            />
                    </a>
                </div>

                <!-- Center elements -->
                <ul class="navbar-nav flex-row d-none d-md-flex">
                    <li class="nav-item me-3 me-lg-1 active">
                        <a class="nav-link" href="Controlador?menu=Producto&accion=Listar" target="myFrame">
                            <img width="25" height="25" src="https://img.icons8.com/ios-filled/25/product.png" alt="product"/>
                            <span class="badge rounded-pill badge-notification bg-danger"></span>
                            Productos
                        </a>
                    </li>
                    <li class="nav-item me-3 me-lg-1 active">
                        <a class="nav-link" href="Controlador?menu=Empleado&accion=Listar" target="myFrame">
                            <img width="25" height="25" src="https://img.icons8.com/ios-filled/25/employee-card.png" alt="employee-card"/>
                            <span class="badge rounded-pill badge-notification bg-danger"></span>
                            Empleados
                        </a>
                    </li>
                    <li class="nav-item me-3 me-lg-1 active">
                        <a class="nav-link" href="Controlador?menu=Cliente&accion=Listar" target="myFrame">
                            <img width="25" height="25" src="https://img.icons8.com/ios-filled/25/conference.png" alt="conference"/>
                            <span class="badge rounded-pill badge-notification bg-danger"></span>
                            Clientes
                        </a>
                    </li>
                    <li class="nav-item me-3 me-lg-1 active">
                        <a class="nav-link" href="Controlador?menu=NuevaVenta&accion=default" target="myFrame">
                            <img width="25" height="25" src="https://img.icons8.com/ios-filled/25/invoice.png" alt="invoice"/>
                            <span class="badge rounded-pill badge-notification bg-danger"></span>
                            Facturar
                        </a>
                    </li>



                </ul>
                <!-- Center elements -->

                <!-- Right elements -->
                <ul class="navbar-nav flex-row">
                    <li class="nav-item me-3 me-lg-1">
                        <a class="nav-link d-sm-flex align-items-sm-center" href="#">
                            <img
                                src="Imagenes/Usuario.png"
                                class="rounded-circle"
                                height="22"
                                alt="Black and White Portrait of a Man"
                                loading="lazy"
                                />
                            <strong class="d-none d-sm-block ms-1">${usuario.getNom()}</strong>
                        </a>
                    </li>
                    <li class="nav-item dropdown me-3 me-lg-1">
                        <a
                            class="nav-link dropdown-toggle hidden-arrow"
                            href="#"
                            id="navbarDropdownMenuLink"
                            role="button"
                            data-mdb-toggle="dropdown"
                            aria-expanded="false"
                            >
                            <i class="fas fa-bell fa-lg"></i>
                            <span class="badge rounded-pill badge-notification bg-danger">12</span>
                        </a>
                        <ul
                            class="dropdown-menu dropdown-menu-end"
                            aria-labelledby="navbarDropdownMenuLink"
                            >
                            <li>
                                <a class="dropdown-item" href="#">Some news</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">Another news</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown me-3 me-lg-1">
                        <a
                            class="nav-link dropdown-toggle hidden-arrow"
                            href="#"
                            id="navbarDropdownMenuLink"
                            role="button"
                            data-mdb-toggle="dropdown"
                            aria-expanded="false"
                            >
                            <i class="fas fa-chevron-circle-down fa-lg"></i>
                        </a>
                        <ul
                            class="dropdown-menu dropdown-menu-end text-center"
                            aria-labelledby="navbarDropdownMenuLink"
                            >
                            <li>
                                <a class="dropdown-item" href="#">${usuario.getUser()}</a>
                            </li>
                            <li>
                                <form action="Validar" method="POST">
                                    <button name="accion" value="Salir" class="dropdown-item">Cerrar Sesion</button>
                                </form>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!-- Right elements -->
            </div>
        </nav>
        <!-- Navbar -->

        <div class="m-4 bg-secondary" style="height: 550px; border-radius: 1rem 1rem 1rem 1rem;">
            <iframe name="myFrame" style="height: 100%; width: 100%; border: none">

            </iframe>
        </div>

    </body>
    <script
        type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"
    ></script>
</html>
