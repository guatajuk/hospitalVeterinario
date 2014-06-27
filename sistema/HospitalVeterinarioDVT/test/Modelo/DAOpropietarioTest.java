/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.Ignore;

/**
 *
 * @author giraldo
 */
public class DAOpropietarioTest {

    public DAOpropietarioTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }

    /**
     * Test of insertar method, of class DAOpropietario.
     */
    @Test
    public void testInsertar() {
        System.out.println("insertar");
        DAOpropietario instance = new DAOpropietario();
        instance.setNombre("Juan Gonzales");
        instance.setDni("23456789");
        instance.setTelefono("8890124");
        instance.setDireccion("CRA 20 # 85-23");
        boolean result = instance.insertar();
        assertTrue(result);
        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
    }

    /**
     * Test of modificar method, of class DAOpropietario.
     */
    @Test
    public void testModificar() {
        System.out.println("modificar");
        DAOpropietario instance = new DAOpropietario();
        instance.setNombre("Juan Gonzales modificado");
        instance.setDni("23456789");
        instance.setTelefono("8890124");
        instance.setDireccion("CRA 20 # 85-23");
        boolean result = instance.modificar();
        assertTrue(result);
    }

    /**
     * Test of consultar method, of class DAOpropietario.
     */
    @Test
    public void testConsultar() throws Exception {
        System.out.println("consultar");
        DAOpropietario instance = new DAOpropietario();
        instance.setDni("23456789");
        String[] result = instance.consultar();
        assertNotNull(result);
    }

    /**
     * Test of verificar method, of class DAOpropietario.
     */
    @Ignore
    public void testVerificar() {
        System.out.println("verificar");
        DAOpropietario instance = new DAOpropietario();
        boolean expResult = false;
        boolean result = instance.verificar();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

}
