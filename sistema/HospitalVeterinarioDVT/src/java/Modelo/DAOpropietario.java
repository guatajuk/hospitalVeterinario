/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Controlador.Conexion;
import java.sql.SQLException;

/**
 *
 * @author Jenny
 */
public class DAOpropietario extends propietario {

    Controlador.Conexion c = new Conexion();

    public boolean insertar() {
        String SQL = "INSERT  INTO propietario (codigo, nombre, dni, telefono,direccion) VALUES ('" + getDni() + "', '" + getNombre() + "', '" + getTelefono() + "', '" + getDireccion() + "' )";
        try {
            c.procesarSQL(SQL);
            return true;
        } catch (SQLException ex) {
            System.out.println("Error con el sql");
            return false;
        }
    }

    public boolean modificar() {
        String sql = "UPDATE propietario SET  nombre='" + getNombre() + "'telefono='" + getTelefono()+ "'apellido='" + getDireccion()  + "' where dni='" + getDni() + "'";
        if (c.actualizar(sql) == 1) {
            return true;
        }
        return false;
    }

    public boolean consultar() {
        return false;
    }
    
    
     public boolean verifica() {
        String sql = "SELECT * From propietario where dni=" + getDni() + "";
        if (c.verificar(sql) == 1) {
            return true;
        }
        return false;
    }  

}
