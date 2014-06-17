package Modelo;

import Controlador.Conexion;
import java.sql.ResultSet;
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
        String sql = "UPDATE veterinario SET cedula = '"+getCedula()+"', nombre= '"+getNombre()+"', especialidad = '"+getEspecialidad()+"' where cedula = '"+getCedula()+"'";
        if (c.actualizar(sql) == 1) {
            return true;
        }
        return false;
    }

    public String[] consultar() throws SQLException {
        String sql = "SELECT * From veterinario where cedula=" + "'" + getCedula() + "'";
        String[] datos = new String[4];
        ResultSet r = c.consultar(sql);
        if (r.next()) {
            for (int i = 1; i < 5; i++) {
                datos[i - 1] = (r.getString(i));
            }
            return datos;
        }
        else {
            return null;
        }
    }

    public boolean verificar() {
        String sql = "SELECT * FROM propietario WHERE cedula = "+getCedula()+"";
        if (c.verificar(sql) == 1) {
            return true;
        }
        return false;
    }  
}

