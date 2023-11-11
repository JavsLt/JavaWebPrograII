<%-- 
    Document   : NuevaVenta
    Created on : 31 oct 2023, 2:02:41
    Author     : Usuario
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
            @media print{
                .parte01, .btn, .accion{
                    display: none;
                }
            }
        </style>
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
            
            <!-- Inicio del Formulario -->
            <div class="col-sm-4 parte01">
                <div class="card">
                    <!-- Inicio Form -->
                    <form action="Controlador?menu=NuevaVenta" method="POST">
                    <div class="card-body">
                        <!-- Datos del Cliente -->
                        <div class="form-group">
                            <label>Datos del cliente</label>
                        </div>
                        
                        <div class="form-group row mb-3">
                            <div class="col-sm-4 col-md-6 d-flex">
                                <input type="text" name="codigocliente" value="${c.getDpi()}" class="form-control" placeholder="Codigo">
                                <input type="submit" name="accion" value="BuscarCliente" class="btn btn-outline-info   ">
                            </div>
                            
                            <div class="col-sm-6 col-md-6  text-center">
                                <input type="text" name="nombrescliente" value="${c.getNom()}" class="form-control mx-md-1" placeholder="Datos Cliente" disabled>
                            </div>
                        </div>
                            <!-- Datos del Producto -->
                        <div class="form-group">
                            <label>Datos Producto</label>
                        </div>
                        
                        <div class="form-group row mb-2">
                            <div class="col-sm-4 col-md-6 d-flex">
                                <input type="text" name="codigoproducto" value="${producto.getId()}" class="form-control mx-md-1" placeholder="Codigo">
                                <button type="submit" name="accion" value="BuscarProducto" class="btn btn-outline-info">Buscar</button>
                              
                            </div>
                            
                            <div class="col-sm-6 col-md-6  text-center">
                                <input type="text" name="nomproducto" value="${producto.getNom()}" class="form-control mx-md-1" placeholder="Datos Producto" >
                            </div>
                        </div>
                        
                        <div class="form-group row mb-2">
                            <div class="col-sm-4 col-md-6">
                                <input type="text" name="precio" value="${producto.getPrecio()}" class="form-control" placeholder="Q/.0.00">
                            </div>
                            
                            <div class="col-sm-6 col-md-6  text-center  d-flex">
                                <input type="number" name="cant" value="1" class="form-control mx-md-1" >
                                <input type="text" name="stock" value="${producto.getStock()}"  class="form-control mx-md-1" >
                            </div>

                        </div>
                        
                        <div class="form-group">
                            <div class="col-ms">
                                <button type="submit" name="accion" value="Agregar" class="btn btn-outline-info">Agregar Producto</button>
                            </div>

                        </div>
                        
                    </div>
                    </form>
                    <!-- Fin Form -->
                </div>
            </div>
            <!-- Fin del Formulario -->
            
            <div class="col-sm-8">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-end ">
                             <div class="d-flex col-md-5">
                             <label class="mx-md-1">No. Serie</label>
                             <input type="text" name="NroSerie" value="${nserie}" class="form-control mx-md-1">
                            </div>
                        </div>
                        
                        
                        <table class="table align-middle mb-0 bg-white table-hover">
                            <thead class="bg-light">
                              <tr>
                                <th>No.</th>
                                <th>Codigo</th>
                                <th>Descripcion</th>
                                <th>Precio</th>
                                <th>Cantidad</th>
                                <th>SubTotal</th>
                                <th class="accion">Acciones</th>
                              </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="list" items="${lista}">
                                <tr>
                                  <td>${list.getItem()}</td>
                                  <td>${list.getIdproducto()}</td>      
                                  <td>${list.getDescripcionP()}</td>
                                  <td>${list.getPrecio()}</td>
                                  <td>${list.getCantidad()}</td>
                                  <td>${list.getSubtotal()}</td>
                                  <td class="d-flex">
                                      <a href="#" class="btn btn-warning">Editar</a>
                                      <a href="#" class="btn btn-danger" style="margin-left: 10px;">Eliminar</a>
                                  </td>
                                </tr>
                              </c:forEach>  
                            </tbody>
                          </table>
                    </div>
                    
                    <div class="card-footer d-flex">
                        <div class="col-md-8">
                            <a href="Controlador?menu=NuevaVenta&accion=GenerarVenta" onclick="print()" class="btn btn-success">Generar Venta</a>
                           
                            <input type="submit" name="accion" value="Cancelar" class="btn btn-danger">
                        </div>
                        <div class="col-md-4 ml-auto d-flex">
                            <label class="col-md-4">Total a Pagar: </label>
                            <input type="text" name="txtTotal" value="Q.${totalpagar}0" class="form-control">
                        </div>
                        
                    </div>
                </div> 
            </div>

        </div>
    </body>
     <script
        type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"
    ></script>
</html>
