package config;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author alumno
 */
public class Conexion {
    Connection con;
    String url = "jdbc:mysql://localhost:3306/bd_ventas";
    String user = "root";
    String pass = "";
    public Connection Conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(url, user, pass);
            System.out.println("Conexion Exitosa");
        } catch (Exception e) {
            System.out.println("Error en la conexion " + e);
        }
        return con;
    }
}


