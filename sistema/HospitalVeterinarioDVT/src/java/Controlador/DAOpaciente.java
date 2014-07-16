package Controlador;
import Utilidades.Conexion;
import Modelo.paciente;
import java.sql.SQLException;

public class DAOpaciente  {
    private paciente paciente;

   Utilidades.Conexion c = new Conexion();

    public boolean insertar(){
        String SQL = "INSERT INTO paciente (dni, nombre, especie, raza, edad, sexo, color) VALUES ('"+getPaciente().getPropietario()+"', '"+getPaciente().getNombre()+"', '"+getPaciente().getEspecie()+"', '"+getPaciente().getRaza()+"', '"+getPaciente().getEdad()+"', '"+getPaciente().getSexo()+"', '"+getPaciente().getColor()+"')";
        try{
            c.procesarSQL(SQL);
            return true;
        } catch (SQLException ex){
            System.out.println("Error con el sql");
            return false;
        }
    }

    public boolean modificar() {
        String sql = "UPDATE paciente SET  propietario ='"+getPaciente().getPropietario()+"', nombre = '"+getPaciente().getNombre()+"', especie = '"+getPaciente().getEspecie()+"', raza = '"+getPaciente().getRaza()+"', edad = '"+getPaciente().getEdad()+"', color = '"+getPaciente().getColor()+"', sexo = '"+getPaciente().getSexo()+"'  where codigo = '"+getPaciente().getCodigo()+"'";
        if (c.actualizar(sql) == 1) {
            return true;
        }
        return false;
    }

    public boolean verificar() {
        String sql = "SELECT * From propietario where codigo = " + getPaciente().getCodigo() + "";
        if (c.verificar(sql) == 1) {
            return true;
        }
        return false;
    }  

    /**
     * @return the paciente
     */
    public paciente getPaciente() {
        return paciente;
    }
}
