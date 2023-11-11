<%-- 
    Document   : Producto
    Created on : 31 oct 2023, 2:02:27
    Author     : Usuario
--%>

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
        <div class="d-flex">
            
            <div class="card col-sm-3">
                <div class="card-body">
                    <form action="Controlador?menu=Producto" method="POST">
                      <div class="form-outline mb-4">
                          <input type="text" value="${producto.getNom()}" name="txtNombres" id="form2Example17" class="form-control form-control-lg" />
                        <label class="form-label" for="form2Example17">Producto</label>
                      </div>  
                      <div class="form-outline mb-4">
                        <input type="text" value="${producto.getPrecio()}" name="txtPrecio" id="form2Example17" class="form-control form-control-lg" />
                        <label class="form-label" for="form2Example17">Precio</label>
                      </div>  
                      <div class="form-outline mb-4">
                        <input type="text" value="${producto.getStock()}" name="txtStock" id="form2Example17" class="form-control form-control-lg" />
                        <label class="form-label" for="form2Example17">Stock</label>
                      </div>
                      <div class="form-outline mb-4">
                        <input type="text" value="${producto.getEstado()}" name="txtEstado" id="form2Example17" class="form-control form-control-lg" />
                        <label class="form-label" for="form2Example17">Estado</label>
                      </div>
                      
  
                           <input type="submit" name="accion" value="Agregar" class="btn btn-info"/>
                           <input type="submit" name="accion" value="Actualizar" class="btn btn-success"/>

                    </form>
                </div>
            </div>


            <div class="card col-sm-9 p-1">
                <table class="table align-middle mb-0 bg-white">
                    <thead class="bg-light">
                      <tr>
                        <th>ID</th>  
                        <th>PRODUCTO</th>
                        <th>PRECIO</th>
                        <th>STOCK</th>
                        <th>ESTADO</th>
                        <th>ACCIONES</th>
                      </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="pro" items="${productos}">
                            <tr>
                              <td>${pro.getId()}</td>
                              <td>${pro.getNom()}</td>
                              <td>${pro.getPrecio()}</td>
                              <td>${pro.getStock()}</td>
                              <td>${pro.getEstado()}</td>
                              
                              <td>
                                  <a class="btn btn-warning" href="Controlador?menu=Producto&accion=Editar&id=${pro.getId()}"><i class="fas fa-user-edit"></i> Editar</a>
                                  <a class="btn btn-danger" href="Controlador?menu=Producto&accion=Delete&id=${pro.getId()}"><i class="fas fa-user-times"></i> Eliminar</a>
                              </td>
                            </tr>
                        </c:forEach>
                            
                    </tbody>
                  </table>
            </div>
        </div>
    </body>
    <script
        type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"
    ></script>
</html>
