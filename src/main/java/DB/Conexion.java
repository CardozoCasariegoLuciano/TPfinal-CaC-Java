/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;

import java.sql.Connection;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;

/**
 *
 * @author lucianocc
 */
public class Conexion {
		private static final String URL = "jdbc:mysql://root:root@localhost:3306/CacTPFinal?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
	private static BasicDataSource dataSource;

	public Conexion() {
	}

	private static DataSource getDataSource() {

		if (dataSource == null)
		{
			try
			{
				dataSource = new BasicDataSource();
				dataSource.setUrl(URL);
				dataSource.setInitialSize(50);
			} catch (Exception e)
			{
				throw new RuntimeException("Error en la DB");
			}
		}
		return dataSource;
	}

	public static Connection getConexion() throws SQLException {
		return getDataSource().getConnection();
	}
}
