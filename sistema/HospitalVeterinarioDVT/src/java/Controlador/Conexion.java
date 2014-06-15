package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Conexion {
    
    ResultSet res = null;
    private Connection con = null;
    Statement st = null;
    String driver = "org.postgresql.Driver";
    String url = "jdbc:postgresql://127.0.0.1:5432/HISTORIAL_VETERINARIO";
    String userDB = "postgres";
    String passDB = "admin";

    public Conexion() {
        conectar();
    }

    public int conectar() {
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            System.out.println("No se pudo cargal el driver :-( " + driver);
            return -1;

        }
        try {
            con = DriverManager.getConnection(url, userDB, passDB);
        } catch (SQLException e) {
            System.out.println("No se pudo realizar la conexion :-(");
            return -2;
        }
        return 1;
    }

    public String buscarS(String sql) {
        try {
            ResultSet r = null;
            st = getCon().createStatement();
            r = st.executeQuery(sql);
            r.next();
            return r.getString(1);
        } catch (SQLException e) {
            return "-1";
        }
    }

    public String buscarC(String sql, int c) {
        try {
            ResultSet r = null;
            st = getCon().createStatement();
            r = st.executeQuery(sql);
            if (r.next());
            return r.getString(c);
        } catch (SQLException e) {
            return "-1";
        }
    }

    public SQLException insertar(String sql) {
        try {
            st = getCon().createStatement();
            st.execute(sql);
            st.close();
            return null;
        } catch (SQLException e) {
            return e;
        }
    }

    public ResultSet consultar(String sql) {
        try {
            st = getCon().createStatement();
            res = st.executeQuery(sql);
        } catch (SQLException e) {
            return null;
        }
        return res;
    }

    public int verificar(String sql) {
        try {
            st = getCon().createStatement();
            res = st.executeQuery(sql);
            if (res.next()) {
                return 1;
            }
            st.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return -1;
    }

    public int actualizar(String sql) {
        try {
            st = getCon().createStatement();
            st.executeUpdate(sql);
            st.close();
            return 1;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return -1;
    }

    public void cerrar() {
        try {
            getCon().close();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    
    /**
     * @return the con
     */
    public Connection getCon() {
        return con;
    }

   
    public StringBuffer cmbGenera(String tabla, int col) {
        StringBuffer sb = new StringBuffer();
        try {
            java.sql.ResultSet resC = null;
            String sql = "Select * from " + tabla.toString();
            resC = resultadoSQL(sql);
            
            sb.append("<option value=\"" + resC.getMetaData().getColumnName(col) + "\">" + resC.getMetaData().getColumnName(col)+" - "+resC.getMetaData().getColumnName(col+1) + " </option>");
            while (resC.next()) {
                sb.append("<option value=\"" + resC.getString(col) + "\">" + resC.getString(col)+" - "+resC.getString(col+1) + " </option>");
                
            }
            
        } catch (SQLException e) {
            sb.append(e.toString());
            return sb;
        }
        return sb;
    }
    
    
    public boolean ejecutar(String SQL) throws SQLException{
        st = con.createStatement();
        return st.execute(SQL);
    }
    
    public ResultSet ejecutarConsulta(String SQL) throws SQLException{
        st = con.createStatement();
        st.execute(SQL);
        return st.getResultSet();
    }
    
    public boolean procesarSQL(String SQL) throws SQLException{
        
        // Me conecto con el motor
        st=con.createStatement();
        
        // Solicitar al motor que ejecute el SQL
        return st.execute(SQL);
    }
    public java.sql.ResultSet resultadoSQL(String SQL) throws SQLException{
        
        // Me conecto con el motor
        st=con.createStatement();
        
        // Solicitar al motor que ejecute el SQL
        return st.executeQuery(SQL); //ejecuta el query y retorna un resultset
    }
   
    
}