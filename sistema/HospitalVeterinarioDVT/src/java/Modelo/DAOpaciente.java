/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Controlador.Conexion;

/**
 *
 * @author Jenny
 */
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
