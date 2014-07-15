package Modelo;

import Controlador.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAOpropietario {

    Controlador.Conexion c = new Conexion();
    private propietario propietario= new propietario();

    public boolean insertar() {
        
            String SQL = "INSERT  INTO propietario (nombre, dni, telefono, direccion) VALUES ('" + getPropietario().getNombre() + "', '" + getPropietario().getDni() + "', '" + getPropietario().getTelefono() + "', '" + getPropietario().getDireccion() + "')";
            try {
                c.procesarSQL(SQL);
                return true;
            } catch (SQLException ex) {
                System.out.println("Error con el sql");
                return false;
            }
        
    }
    
    public String insertarm() {
        if (!verificar()) {
            String SQL = "INSERT  INTO propietario (nombre, dni, telefono, direccion) VALUES ('" + getPropietario().getNombre() + "', '" + getPropietario().getDni() + "', '" + getPropietario().getTelefono() + "', '" + getPropietario().getDireccion() + "')";
            try {
                c.procesarSQL(SQL);
                return "Insertado Correctamente";
            } catch (SQLException ex) {
                System.out.println("Error con el sql");
                return "Error con el sql";
            }
        } else {
            System.out.println("ya existe");
            return "El propietario ya se encuentra registrado";
        }
    }

    public boolean modificar() {
        String sql = "UPDATE propietario SET  nombre = '" + getPropietario().getNombre() + "', dni= '" + getPropietario().getDni() + "' , telefono='" + getPropietario().getTelefono() + "' , direccion='" + getPropietario().getDireccion() + "' where dni = '" + getPropietario().getDni() + "'";
        if (c.actualizar(sql) == 1) {
            return true;
        } else {
            return false;
        }
    }

    public String[] consultar() throws SQLException {
        String sql = "SELECT * From propietario where dni=" + "'" + getPropietario().getDni() + "'";
        String[] datos = new String[5];
        ResultSet r = c.consultar(sql);
        if (r.next()) {
            for (int i = 1; i < 6; i++) {
                datos[i - 1] = (r.getString(i));
            }
            return datos;
        } else {
            return null;
        }
    }

    public boolean verificar() {
        String sql = "SELECT * From propietario where dni="+ "'" + getPropietario().getDni() + "'";
        if (c.verificar(sql) == 1) {
            return true;
        }
        return false;
    }

    /**
     * @return the propietario
     */
    public propietario getPropietario() {
        return propietario;
    }

    /**
     * @param propietario the propietario to set
     */
    public void setPropietario(propietario propietario) {
        this.propietario = propietario;
    }
}
