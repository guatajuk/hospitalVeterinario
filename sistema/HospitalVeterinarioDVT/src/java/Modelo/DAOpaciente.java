package Modelo;

import Controlador.Conexion;

public class DAOpaciente extends paciente {

    Controlador.Conexion c = new Conexion();

    public boolean insertar() {
        return false;
    }

    public boolean modificar() {
        return false;
    }

    public boolean consultar() {
        return false;
    }
}
