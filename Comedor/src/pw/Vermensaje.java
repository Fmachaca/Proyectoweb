package pw;

import Clases.*;

import java.io.IOException;

import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;




@SuppressWarnings("serial")
public class Vermensaje extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {

		PersistenceManager pm = PMF.get().getPersistenceManager();

		resp.setContentType("text/html");

	
		//se utiliza para nicia�

		Query q = pm.newQuery(Mensajes.class);
		
		q.setOrdering("id descending");
		q.setRange(0, 10);

		try{

			@SuppressWarnings("unchecked")
			List<Mensajes> mensajes = (List<Mensajes>) q.execute();
			req.setAttribute("mensajes", mensajes);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/vermensajes.jsp");
			rd.forward(req, resp);


		}catch(Exception e){
			getServletContext().getRequestDispatcher("/Error.jsp");

		}finally{
			q.closeAll();
		}

	}
}
