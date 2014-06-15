package Modelo;

import Controlador.Conexion;
import java.sql.SQLException;

public class DAOveterinario extends veterinario {

    Controlador.Conexion c = new Conexion();

    public boolean insertar() {
        String SQL = "INSERT  INTO veterinario (cedula, nombre, especialidad) VALUES ('"+getCedula()+"', '"+getNombre()+"', '"+getEspecialidad()+"')";
        try {
            c.procesarSQL(SQL);
            return true;
        } catch (SQLException ex) {
            System.out.println("Error con el sql");
            return false;
        }
    }

    public boolean modificar() {
        String sql = "UPDATE veterinario SET cedula = '"+getCedula()+" 'nombre= '"+getNombre()+" 'especialidad = '"+getEspecialidad()+"' where codigo = '"+getCodigo()+"'";
        if (c.actualizar(sql) == 1) {
            return true;
        }
        return false;
    }

    public boolean consultar() {
        return false;
    }
    
    public boolean verifica() {
        String sql = "SELECT * FROM propietario WHERE codigo = "+getCodigo()+"";
        if (c.verificar(sql) == 1) {
            return true;
        }
        return false;
    }  

}

