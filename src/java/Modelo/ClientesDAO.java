
package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ClientesDAO {
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public Clientes buscar(String dpi){
        Clientes clien= new Clientes();
        String sql="select * from cliente where Dpi="+dpi;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                clien.setId(rs.getInt(1));
                clien.setDpi(rs.getString(2));
                clien.setNom(rs.getString(3));
                clien.setDireccion(rs.getString(4));
                clien.setEstado(rs.getString(5));
                
            }
        } catch (Exception e) {
        }
        return clien;
    }
    
    
   
    //Operaciones CRUD
    public List listar(){
        String sql ="select * from cliente";
        List<Clientes>lista = new ArrayList<>();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Clientes cli = new Clientes();
                cli.setId(rs.getInt(1));
                cli.setDpi(rs.getString(2));
                cli.setNom(rs.getString(3));
                cli.setDireccion(rs.getString(4));
                cli.setEstado(rs.getString(5));
                
                
                lista.add(cli);
                
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public int agregar(Clientes cli){
        String sql="INSERT INTO cliente(Dpi,Nombres, Direccion, Estado)values(?,?,?,?)";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, cli.getDpi());
            ps.setString(2, cli.getNom());
            ps.setString(3, cli.getDireccion());
            ps.setString(4, cli.getEstado());
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
        return r;
    }
    public Clientes listarId(int id){
        Clientes clie= new Clientes();
        String sql="select * from cliente where IdCliente="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                clie.setDpi(rs.getString(2));
                clie.setNom(rs.getString(3));
                clie.setDireccion(rs.getString(4));
                clie.setEstado(rs.getString(5));
                
            }
        } catch (Exception e) {
        }
        return clie;
    }
    public int actualizar(Clientes cli){
       String sql="update cliente set Dpi=?,Nombres=?, Direccion=?, Estado=? where IdCliente=?";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, cli.getDpi());
            ps.setString(2, cli.getNom());
            ps.setString(3, cli.getDireccion());
            ps.setString(4, cli.getEstado());
            ps.setInt(5, cli.getId());
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
        return r;
    }
    public void delete(int id){
        String sql="delete from cliente where IdCliente="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
    }
    
}
