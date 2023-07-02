/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import Models.OradorModel;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "listarOradores", urlPatterns = "/listarOradores")
public class listarOradores extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			OradorModel m = new OradorModel();
			request.setAttribute("oradores", m.getOradores());

			request.getRequestDispatcher("WEB-INF/pages/ListPersons.jsp").forward(request, response);
		} catch (Exception e)
		{
			e.printStackTrace();
			response.sendError(500, "Error al leer la base de datos");
		}
	}
}
