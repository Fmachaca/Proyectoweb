package pw;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

import Clases.*;

@SuppressWarnings("serial")
public class Registrarcomensal extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/html");
		String cUI = req.getParameter("cui");
		String name = req.getParameter("name");
		String lastname = req.getParameter("lastname");
		String email = req.getParameter("email");
		String escuela = req.getParameter("escuela");

		Persona comensal = new Persona(name, lastname, email, cUI, escuela);

		PersistenceManager pm = PMF.get().getPersistenceManager();

		RequestDispatcher rd=null;
		System.out.println(1);
		try{
			System.out.println(2);
			pm.makePersistent(comensal);
			System.out.println(3);
			rd = getServletContext().getRequestDispatcher("/Exito.jsp");
			rd.forward(req, resp);
			System.out.println(4);
			
		}catch(Exception e){
			System.out.println(e);
			resp.getWriter().println("Ocurrio un error, <a href='registrar.jsp'>vuelva a intentarlo</a>");
		}finally{
			pm.close();
		}
	}
}
