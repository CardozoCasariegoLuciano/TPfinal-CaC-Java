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

@WebServlet(name = "borrarOrador", urlPatterns = "/borrarOrador")
public class BorrarOrador extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		try
		{
			OradorModel m = new OradorModel();
			m.EliminarOrador(id);

			resp.sendRedirect(req.getContextPath() + "/listarOradores");
		} catch (Exception e)
		{
			e.printStackTrace();
			resp.sendError(500, "Error al leer la base de datos");
		}
	}
}
