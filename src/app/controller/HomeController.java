package app.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*@SuppressWarnings("serial")
@WebServlet("/home")
public class HomeController extends Controller {
	public void indexGet() throws ServletException, IOException {
		view("home/indexGet.jsp");
	}
}*/



@SuppressWarnings("serial")
@WebServlet({ "/home", "/home/", "/home/*" })
public class HomeController extends HttpServlet{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException	{
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	}	
	
}
