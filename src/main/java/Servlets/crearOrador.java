/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Servlets;

import Models.OradorModel;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "crearOrador", urlPatterns = "/crearOrador")
public class crearOrador extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String tema = request.getParameter("tema");
		
		try
		{
			OradorModel m = new OradorModel();
			m.CrearOrador(nombre, apellido, tema);			

			response.sendRedirect(request.getContextPath());			
		} catch (Exception e)
		{
			e.printStackTrace();
			response.sendError(500, "Error al leer la base de datos");
		}
	}
}
