package pw;

import Clases.*;

import java.io.IOException;

import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;




@SuppressWarnings("serial")
public class Listacomensales extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {

		PersistenceManager pm = PMF.get().getPersistenceManager();

		resp.setContentType("text/html");
		System.out.println(123);
	
		//se utiliza para nicia�

		Query q = pm.newQuery(Persona.class);
		System.out.println(12);
		try{
			System.out.println(54);
			@SuppressWarnings("unchecked")
			List<Persona> comensales = (List<Persona>) q.execute();
			req.setAttribute("comensales", comensales);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/listacomensales.jsp");
			rd.forward(req, resp);


		}catch(Exception e){
			System.out.println(e);

		}finally{
			q.closeAll();
		}

	}
}
