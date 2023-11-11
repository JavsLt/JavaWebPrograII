<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.0/mdb.min.css"
            rel="stylesheet"
            />
        <title>JSP Page</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body">
                        <form action="Controlador?menu=Empleado" method="POST">
                            <div class="form-outline mb-4">
                                <input type="text" value="${empleado.getDpi()}" name="txtDpi" class="form-control" required />
                                <label for="validationDefault01" class="form-label">DPI</label>
                            </div>
                            <div class="form-outline mb-4">
                                <input type="text" value="${empleado.getNom()}" name="txtNombres" class="form-control" required />
                                <label for="validationDefault01" class="form-label">Nombres</label>
                            </div>
                            <div class="form-outline mb-4">
                                <input type="text" value="${empleado.getTel()}" name="txtTel" class="form-control" required />
                                <label for="validationDefault01" class="form-label">Telefono</label>
                            </div>
                            <div class="form-outline mb-4">
                                <input type="text" value="${empleado.getEstado()}" name="txtEstado" class="form-control" required />
                                <label for="validationDefault01" class="form-label">Estado</label>
                            </div>
                            <div class="form-outline mb-4">
                                <input type="text" value="${empleado.getUser()}" name="txtUsuario" class="form-control" required />
                                <label for="validationDefault01" class="form-label">Usuario</label>
                            </div>
                            <input type="submit" name="accion" value="Agregar" class="btn btn-info"/>
                            <input type="submit" name="accion" value="Actualizar" class="btn btn-success"/>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="card">
                    <table class="table align-middle mb-0 bg-white" border="1">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>DPI</th>
                                <th>NOMBRES</th>
                                <th>TELEFONO</th>
                                <th>ESTADO</th>
                                <th>USUARIO</th>
                                <th>ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="em" items="${empleados}">
                                <tr>
                                    <td>${em.getId()}</td>
                                    <td>${em.getDpi()}</td>
                                    <td>${em.getNom()}</td>
                                    <td>${em.getTel()}</td>
                                    <td>${em.getEstado()}</td>
                                    <td>${em.getUser()}</td>
                                    <td>
                                        <a class="btn btn-warning" href="Controlador?menu=Empleado&accion=Editar&id=${em.getId()}"><i class="fas fa-user-edit"></i> Editar</a>
                                        <a class="btn btn-danger" href="Controlador?menu=Empleado&accion=Delete&id=${em.getId()}"><i class="fas fa-user-times"></i> Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>


    </body>
    <script
        type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"
    ></script>
</html>
