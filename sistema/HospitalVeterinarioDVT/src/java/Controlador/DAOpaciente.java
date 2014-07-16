package Controlador;
import Utilidades.Conexion;
import Modelo.paciente;
import java.sql.SQLException;

public class DAOpaciente  {
    private paciente paciente;

   Utilidades.Conexion c = new Conexion();

    public boolean insertar(){
        String SQL = "INSERT INTO paciente ( nombre, especie, raza,  sexo,edad,color, procedencia,codigopropietario) VALUES ( '"+getPaciente().getNombre()+"', "+getPaciente().getEspecie()+", '"+getPaciente().getRaza()+"', '"+getPaciente().getSexo()+"','"+getPaciente().getEdad()+"', '"+getPaciente().getColor()+"', '"+getPaciente().getProcedencia()+"',"+getPaciente().getPropietario()+")";
        System.out.println("sssssssssssss    "+SQL);
        try{
            c.procesarSQL(SQL);
            return true;
        } catch (SQLException ex){
            System.out.println("Error con el sql");
            return false;
        }
    }

//    public boolean modificar() {
//        String sql = "UPDATE paciente SET  codigopropietario ='"+getPaciente().getPropietario()+"', nombre = '"+getPaciente().getNombre()+"', especie = '"+getPaciente().getEspecie()+"', raza = '"+getPaciente().getRaza()+"', edad = '"+getPaciente().getEdad()+"', color = '"+getPaciente().getColor()+"', sexo = '"+getPaciente().getSexo()+"'  where codigo = '"+getPaciente().getCodigo()+"'";
//        if (c.actualizar(sql) == 1) {
//            return true;
//        }
//        return false;
//    }

    public boolean verificar() {
        String sql = "SELECT * From paciente where codigopropietario ='"+getPaciente().getPropietario()+"', nombre = '"+getPaciente().getNombre()+"'";
        return c.verificar(sql) == 1;
    }  

    /**
     * @return the paciente
     */
    public paciente getPaciente() {
        return paciente;
    }
    
     public StringBuffer generarCmbEspecie() {
        StringBuffer sb = new StringBuffer();
        try {
            java.sql.ResultSet resC = null;
            String sql = "Select * from especie";
            resC = c.resultadoSQL(sql);
            sb.append("<SELECT name=\"especie\"><option value=\"\"></option>");
            while (resC.next()) {
                sb.append("<option value=\"" + resC.getString(1) + "\">" + resC.getString(2)+" </option>");
            }
            sb.append("</SELECT>");
        } catch (SQLException e) {
            sb.append(e.toString());
           
            return sb;
        }
         System.out.println(""+ sb.toString());
        return sb;
    }
 
}
