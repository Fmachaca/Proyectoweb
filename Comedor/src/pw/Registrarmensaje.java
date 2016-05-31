package pw;

import Clases.*;

import java.io.IOException;
import java.util.Date;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class Registrarmensaje extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/html");
		String remitente = req.getParameter("remitente");
		String asunto = req.getParameter("asunto");
		String contenido = req.getParameter("contenido");
		Date date=new Date();
		String fecha=date+"";
		Mensajes mensaje = new Mensajes(date.getTime(), remitente, asunto, contenido,fecha);

		PersistenceManager pm = PMF.get().getPersistenceManager();

		RequestDispatcher rd=null;
		try{
			pm.makePersistent(mensaje);
			rd = getServletContext().getRequestDispatcher("/Exito.jsp");
			rd.forward(req, resp);


		}catch(Exception e){
			rd = getServletContext().getRequestDispatcher("/Error.jsp");
			
		}finally{
			pm.close();
		}
	}
}
