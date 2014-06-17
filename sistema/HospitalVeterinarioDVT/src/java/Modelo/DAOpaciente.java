package Modelo;
import Controlador.Conexion;
import java.sql.SQLException;

public class DAOpaciente extends paciente {

    Controlador.Conexion c = new Conexion();

    public boolean insertar(){
        String SQL = "INSERT INTO paciente (dni, nombre, especie, raza, edad, sexo, color) VALUES ('"+getPropietario()+"', '"+getNombre()+"', '"+getEspecie()+"', '"+getRaza()+"', '"+getEdad()+"', '"+getSexo()+"', '"+getColor()+"')";
        try{
            c.procesarSQL(SQL);
            return true;
        } catch (SQLException ex){
            System.out.println("Error con el sql");
            return false;
        }
    }

    public boolean modificar() {
        String sql = "UPDATE paciente SET  propietario ='"+getPropietario()+"', nombre = '"+getNombre()+"', especie = '"+getEspecie()+"', raza = '"+getRaza()+"', edad = '"+getEdad()+"', color = '"+getColor()+"', sexo = '"+getSexo()+"'  where codigo = '"+getCodigo()+"'";
        if (c.actualizar(sql) == 1) {
            return true;
        }
        return false;
    }

    public boolean verificar() {
        String sql = "SELECT * From propietario where codigo = " + getCodigo() + "";
        if (c.verificar(sql) == 1) {
            return true;
        }
        return false;
    }  
}
