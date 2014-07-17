package Controlador;

import Utilidades.Conexion;
import Modelo.paciente;
import Modelo.propietario;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAOpaciente {

    private paciente p = new paciente();
    Utilidades.Conexion c = new Conexion();

    public boolean insertar() {
        String sql = "insert into paciente (nombre,especie,raza,sexo,edad,color,procedencia,codigopropietario) values ('" + getP().getNombre() + "','" + getP().getEspecie() + "','" + getP().getRaza() + "','" + getP().getSexo() + "','" + getP().getEdad() + "','" + getP().getColor() + "','" + getP().getProcedencia() + "','" + getP().getPropietario() + "')";
        System.out.println("\n \n \n    " + sql + "\n \n \n");
        try {
            c.procesarSQL(sql);
            return true;
        } catch (SQLException ex) {
            System.out.println("Error con el sql");
            return false;
        }
    }

    public paciente consultar() throws SQLException {
        String sql = "SELECT * From paciente where codigo=" + getP().getCodigo() + "";
        System.out.println("------------------------------------------------------------- ");
        System.out.println(" ");
        System.out.println(" sentencia " + sql);
        System.out.println("");
        System.out.println("------------------------------------------------ ");

        ResultSet r = c.consultar(sql);
        if (r.next()) {
            p.setNombre(r.getString(2));
            p.setEspecie(Integer.parseInt(r.getString(3)));
            p.setRaza(r.getString(4));
            p.setSexo(r.getString(5));
            p.setEdad(r.getString(6));
            p.setColor(r.getString(7));
            p.setProcedencia(r.getString(8));
            p.setPropietario(r.getString(9));
            return p;
        } else {
            return null;
        }
    }

    public boolean modificar() {
        String sql = "UPDATE paciente SET  nombre ='" + getP().getNombre() + "', especie = '" + getP().getEspecie() + "', raza = '" + getP().getRaza() + "', sexo='" + getP().getSexo() + "', edad = '" + getP().getEdad() + "', color = '" + getP().getColor() + "', procedencia = '" + getP().getProcedencia() + "', codigopropietario='" + getP().getPropietario() + "'  where codigo=" + getP().getCodigo() + "";

        System.out.println("------------------------------------------------------------- ");
        System.out.println(" ");
        System.out.println(" sentencia " + sql);
        System.out.println("");
        System.out.println("------------------------------------------------ ");
        return c.actualizar(sql) == 1;
    }

    public boolean verificar() {
        String sql = "SELECT * From paciente where codigopropietario ='" + getP().getPropietario() + "',nombre = '" + getP().getNombre() + "'";
        return c.verificar(sql) == 1;
    }

    /**
     * @return the pEncontrado
     */
    public paciente getP() {
        return p;
    }

    public StringBuffer generarCmbEspecie() {
        StringBuffer sb = new StringBuffer();
        try {
            java.sql.ResultSet resC = null;
            String sql = "Select * from especie;";
            resC = c.resultadoSQL(sql);
            sb.append("<SELECT name=\"especie\" id=\"especie\">");
            while (resC.next()) {
                sb.append("<option value=\"" + resC.getString(1) + "\">" + resC.getString(2) + " </option>");
            }
            sb.append("</SELECT>");
            return sb;
        } catch (SQLException e) {
            sb.append(e.toString());

            return sb;
        }
    }

}
