package Modelo;

import Controlador.Conexion;
import java.sql.SQLException;

public class DAOpropietario extends propietario {

    Controlador.Conexion c = new Conexion();

    public boolean insertar() {
        String SQL = "INSERT  INTO propietario (nombre, dni, telefono, direccion) VALUES ('"+getNombre()+"', '"+getDni()+"', '"+getTelefono()+"', '"+getDireccion()+"')";
        try {
            c.procesarSQL(SQL);
            return true;
        } catch (SQLException ex) {
            System.out.println("Error con el sql");
            return false;
        }
    }

    public boolean modificar() {
        String sql = "UPDATE propietario SET  nombre = '"+getNombre()+"' dni = '"+getDni()+"' telefono='"+getTelefono()+"'apellido='"+getDireccion()+"' where codigo = '"+getCodigo()+"'";
        if (c.actualizar(sql) == 1) {
            return true;
        }
        return false;
    }

    public boolean consultar() {
        return false;
    }
    
    public boolean verificar() {
        String sql = "SELECT * From propietario where dni=" + getDni() + "";
        if (c.verificar(sql) == 1) {
            return true;
        }
        return false;
    }  
}