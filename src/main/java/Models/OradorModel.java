/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import DB.Conexion;
import DTO.Orador;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author lucianocc
 */
public class OradorModel {

	public OradorModel() {
	}

	public ArrayList<Orador> getOradores() throws SQLException {
		ArrayList<Orador> oradores = new ArrayList<>();

		Connection con = Conexion.getConexion();
		PreparedStatement ps = con.prepareStatement("SELECT * FROM oradores;");
		ResultSet rs = ps.executeQuery();

		while (rs.next())
		{
			String id = rs.getString(1);
			String nombre = rs.getString(2);
			String apellido = rs.getString(3);
			String tema = rs.getString(4);

			oradores.add(new Orador(id, nombre, apellido, tema));
		}

		return oradores;
	}

	public void CrearOrador(String nombre, String apellido, String tema) throws SQLException {
		String SQL = "INSERT INTO `oradores` (`nombre`, `apellido`, `tema`) VALUES";
		SQL += " ('" + nombre + "','" + apellido + "','" + tema + "');";

		Connection con = Conexion.getConexion();
		Statement st = con.createStatement();
		st.execute(SQL);
	}
	
	public void EliminarOrador(String id) throws SQLException {
		String SQL = "DELETE FROM oradores WHERE id = '" + id + "';";		

		Connection con = Conexion.getConexion();
		Statement st = con.createStatement();
		st.execute(SQL);
	}
	
	public void EditarOrador(String id, String nombre, String apellido, String tema) throws SQLException {
		String SQL = "UPDATE `oradores` ";
		SQL += "SET nombre = '" + nombre + "', apellido = '" + apellido + "', tema = '" + tema + "'";
		SQL += " WHERE id = '" + id + "';";		

		Connection con = Conexion.getConexion();
		Statement st = con.createStatement();
		st.execute(SQL);
	}

}
