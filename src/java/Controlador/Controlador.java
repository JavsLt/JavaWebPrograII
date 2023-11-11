package Controlador;

import Modelo.Clientes;
import Modelo.ClientesDAO;
import Modelo.Empleado;
import Modelo.EmpleadoDAO;
import Modelo.Producto;
import Modelo.ProductoDAO;
import Modelo.Venta;
import Modelo.VentaDAO;
import config.GenerarSerie;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Usuario
 */
public class Controlador extends HttpServlet {

    Empleado em = new Empleado();
    EmpleadoDAO edao = new EmpleadoDAO();
    int ide;

    Producto pro = new Producto();
    ProductoDAO pdao = new ProductoDAO();
    int idp;

    Clientes cli = new Clientes();
    ClientesDAO cdao = new ClientesDAO();
    int idc;

    Venta v = new Venta();
    List<Venta> lista = new ArrayList();
    int item;
    int cod;
    String descripcion;
    double precio;
    int cant;
    double subtotal;
    double totalPagar;

    String numeroserie;
    VentaDAO vdao = new VentaDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        if (menu.equals("Principal")) {
            request.getRequestDispatcher("Principal.jsp").forward(request, response);
        }
        if (menu.equals("Empleado")) {
            switch (accion) {
                case "Listar":
                    List Listar = edao.listar();
                    request.setAttribute("empleados", Listar);
                    break;
                case "Agregar":
                    String dpi = request.getParameter("txtDpi");
                    String nom = request.getParameter("txtNombres");
                    String tel = request.getParameter("txtTel");
                    String est = request.getParameter("txtEstado");
                    String user = request.getParameter("txtUsuario");
                    em.setDpi(dpi);
                    em.setNom(nom);
                    em.setTel(tel);
                    em.setEstado(est);
                    em.setUser(user);
                    edao.agregar(em);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    ide = Integer.parseInt(request.getParameter("id"));
                    Empleado e = edao.listarId(ide);
                    request.setAttribute("empleado", e);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String dpi1 = request.getParameter("txtDpi");
                    String nom1 = request.getParameter("txtNombres");
                    String tel1 = request.getParameter("txtTel");
                    String est1 = request.getParameter("txtEstado");
                    String user1 = request.getParameter("txtUsuario");
                    em.setDpi(dpi1);
                    em.setNom(nom1);
                    em.setTel(tel1);
                    em.setEstado(est1);
                    em.setUser(user1);
                    em.setId(ide);
                    edao.actualizar(em);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Delete":
                    ide = Integer.parseInt(request.getParameter("id"));
                    edao.delete(ide);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Empleado.jsp").forward(request, response);
        }
        if (menu.equals("Cliente")) {
            switch (accion) {
                case ("Listar"):
                    List lista = cdao.listar();
                    request.setAttribute("clientes", lista);
                    break;
                case ("Agregar"):
                    String dpi = request.getParameter("txtDpi");
                    String nom = request.getParameter("txtNombres");
                    String dire = request.getParameter("txtDire");
                    String est = request.getParameter("txtEstado");

                    cli.setDpi(dpi);
                    cli.setNom(nom);
                    cli.setDireccion(dire);
                    cli.setEstado(est);
                    cdao.agregar(cli);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break;
                case ("Editar"):
                    idc = Integer.parseInt(request.getParameter("id"));
                    Clientes e = cdao.listarId(idc);
                    request.setAttribute("cliente", e);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break;
                case ("Actualizar"):
                    String dpi1 = request.getParameter("txtDpi");
                    String nom1 = request.getParameter("txtNombres");
                    String dire1 = request.getParameter("txtDire");
                    String est1 = request.getParameter("txtEstado");

                    cli.setDpi(dpi1);
                    cli.setNom(nom1);
                    cli.setDireccion(dire1);
                    cli.setEstado(est1);

                    cli.setId(idc);
                    cdao.actualizar(cli);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break;
                case ("Delete"):
                    idc = Integer.parseInt(request.getParameter("id"));
                    cdao.delete(idc);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Cliente.jsp").forward(request, response);
        }
        if (menu.equals("Producto")) {
            switch (accion) {
                case ("Listar"):
                    List lista = pdao.listar();
                    request.setAttribute("productos", lista);
                    break;
                case ("Agregar"):
                    String nom = request.getParameter("txtNombres");
                    double precio = Double.parseDouble(request.getParameter("txtPrecio"));
                    int stock = Integer.parseInt(request.getParameter("txtStock"));
                    String est = request.getParameter("txtEstado");
                    pro.setNom(nom);
                    pro.setPrecio(precio);
                    pro.setStock(stock);
                    pro.setEstado(est);

                    pdao.agregar(pro);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
                case ("Editar"):
                    idp = Integer.parseInt(request.getParameter("id"));
                    Producto e = pdao.listarId(idp);
                    request.setAttribute("producto", e);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
                case ("Actualizar"):
                    String nom1 = request.getParameter("txtNombres");
                    double precio1 = Double.parseDouble(request.getParameter("txtPrecio"));
                    int stock1 = Integer.parseInt(request.getParameter("txtStock"));
                    String est1 = request.getParameter("txtEstado");
                    pro.setNom(nom1);
                    pro.setPrecio(precio1);
                    pro.setStock(stock1);
                    pro.setEstado(est1);
                    pro.setId(idp);
                    pdao.actualizar(pro);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
                case ("Delete"):
                    idp = Integer.parseInt(request.getParameter("id"));
                    pdao.delete(idp);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;

                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Producto.jsp").forward(request, response);
        }
        if (menu.equals("NuevaVenta")) {
            switch (accion) {
                case "BuscarCliente":
                    String dpi = request.getParameter("codigocliente");
                    cli.setDpi(dpi);
                    cli = cdao.buscar(dpi);
                    request.setAttribute("c", cli);
                    request.setAttribute("totalpagar", totalPagar);
                    request.setAttribute("producto", pro);
                    request.setAttribute("lista", lista);
                    
                    numeroserie = vdao.GenerarSerie();
                    if(numeroserie==null){
                        numeroserie="00000001";
                        request.setAttribute("nserie", numeroserie);
                    }else{
                        int incrementar= Integer.parseInt(numeroserie);
                        GenerarSerie gs= new GenerarSerie();
                        numeroserie=gs.NumeroSerie(incrementar);
                        request.setAttribute("nserie", numeroserie);        
                    }
                    break;
                case "BuscarProducto":
                    int id = Integer.parseInt(request.getParameter("codigoproducto"));
                    pro = pdao.listar2(id);
                    request.setAttribute("c", cli);
                    request.setAttribute("producto", pro);
                    request.setAttribute("lista", lista);
                    request.setAttribute("totalpagar", totalPagar);
                    
                    numeroserie = vdao.GenerarSerie();
                    if(numeroserie==null){
                        numeroserie="00000001";
                        request.setAttribute("nserie", numeroserie);
                    }else{
                        int incrementar= Integer.parseInt(numeroserie);
                        GenerarSerie gs= new GenerarSerie();
                        numeroserie=gs.NumeroSerie(incrementar);
                        request.setAttribute("nserie", numeroserie);
                    }
                    break;
                case "Agregar":
                    request.setAttribute("c", cli);
                    totalPagar = 0.0;
                    item = item + 1;
                    cod = pro.getId();
                    descripcion = request.getParameter("nomproducto");
                    precio = Double.parseDouble(request.getParameter("precio"));
                    cant = Integer.parseInt(request.getParameter("cant"));
                    subtotal = precio * cant;
                    v = new Venta();
                    v.setItem(item);
                    v.setIdproducto(cod);
                    v.setDescripcionP(descripcion);
                    v.setPrecio(precio);
                    v.setCantidad(cant);
                    v.setSubtotal(subtotal);
                    lista.add(v);
                    for (int i = 0; i < lista.size(); i++) {
                        totalPagar = totalPagar + lista.get(i).getSubtotal();
                    }
                    request.setAttribute("totalpagar", totalPagar);
                    request.setAttribute("lista", lista);
                    break;
                case "GenerarVenta":
                    for (int i = 0; i < lista.size(); i++) {
                        Producto pr=new Producto();
                        int cantidad = lista.get(i).getCantidad();
                        int idProducto = lista.get(i).getIdproducto();
                        ProductoDAO aO = new ProductoDAO();
                        pr=aO.buscar(idProducto);
                        int sac=pr.getStock()-cantidad;
                        aO.actualizarStock(idProducto, sac);
                    }
                    
                    v.setIdcliente(cli.getId());
                    v.setIdempleado(18);
                    v.setNumserie(numeroserie);
                    v.setFecha("2022-06-17");
                    v.setMonto(totalPagar);
                    v.setEstado("1");
                    vdao.guardarVenta(v);
                    
                    //Guardar detalle venta
                    int idv=Integer.parseInt(vdao.IdVentas());
                    for (int i=0; i<lista.size(); i++){
                        v=new Venta();
                        v.setId(idv);
                        v.setIdproducto(lista.get(i).getIdproducto());
                        v.setCantidad(lista.get(i).getCantidad());
                        v.setPrecio(lista.get(i).getPrecio());
                        vdao.guardarDetalleventas(v);
                        
                    }
                    
                    numeroserie = vdao.GenerarSerie();
                    if(numeroserie==null){
                        numeroserie="00000001";
                        request.setAttribute("nserie", numeroserie);
                    }else{
                        int incrementar= Integer.parseInt(numeroserie);
                        GenerarSerie gs= new GenerarSerie();
                        numeroserie=gs.NumeroSerie(incrementar);
                        request.setAttribute("nserie", numeroserie);
                                
                    }
                    break;
                default:
                    numeroserie = vdao.GenerarSerie();
                    if (numeroserie == null) {
                        numeroserie = "00000001";
                        request.setAttribute("nserie", numeroserie);
                    } else {
                        int incrementar = Integer.parseInt(numeroserie);
                        GenerarSerie gs = new GenerarSerie();
                        numeroserie = gs.NumeroSerie(incrementar);
                        request.setAttribute("nserie", numeroserie);
                    }
                    request.getRequestDispatcher("NuevaVenta.jsp").forward(request, response);
            }
            request.getRequestDispatcher("NuevaVenta.jsp").forward(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
