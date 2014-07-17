package Controlador;

import Utilidades.Conexion;
import Modelo.propietario;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAOpropietario{

    Utilidades.Conexion c = new Conexion();
    protected propietario propietario= new propietario();

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

    public propietario consultar() throws SQLException {
        String sql = "SELECT * From propietario where dni="+ "'" + getPropietario().getDni() + "'";
        propietario p= new propietario();
        ResultSet r = c.consultar(sql);
        if (r.next()) {
           p.setNombre(r.getString(2));
           p.setDni(r.getString(3));
           p.setTelefono(r.getString(4));
           p.setDireccion(r.getString(5));
            return p;
        } else {
            return null;
        }
    }

    public boolean verificar() {
        String sql = "SELECT * From propietario where dni="+ "'" + getPropietario().getDni() + "'";
        if (c.verificar(sql) == 1) {
            System.out.println("exite informacionnnnnnnnnnnnnnnnnnnnnnnnnn");
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
