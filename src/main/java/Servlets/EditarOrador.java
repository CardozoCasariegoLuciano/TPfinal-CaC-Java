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

@WebServlet(name = "editarOrador", urlPatterns
	= "/editarOrador"
)
public class EditarOrador extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		String nombre = req.getParameter("nombre");
		String apellido = req.getParameter("apellido");
		String tema = req.getParameter("tema");
		String isEditing = req.getParameter("isForm");

		try
		{
			if (isEditing.equals("false"))
			{
				req.setAttribute("id", id);
				req.setAttribute("nombre", nombre);
				req.setAttribute("apellido", apellido);
				req.setAttribute("tema", tema);

				req.getRequestDispatcher("WEB-INF/pages/EditForm.jsp").forward(req, resp);
			} else
			{
				OradorModel m = new OradorModel();
				m.EditarOrador(id, nombre, apellido, tema);

				resp.sendRedirect(req.getContextPath() + "/listarOradores");
			}

		} catch (Exception e)
		{
			e.printStackTrace();
			resp.sendError(500, "Error al leer la base de datos");
		}
	}
}
