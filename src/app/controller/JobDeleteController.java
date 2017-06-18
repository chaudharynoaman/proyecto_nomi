package app.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import app.bean.Job;
import app.model.JobModel;

@SuppressWarnings("serial")
@WebServlet({ "/admin/listaempleos", "/admin/listaempleos/", "/admin/listaempleos/*" })
public class JobDeleteController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Job> jobs = new JobModel().getTodos();
		for (Job job : jobs) {
			response.getWriter().println(job.getTitulo());
		}
		
		request.setAttribute("jobs", jobs);		


		request.getRequestDispatcher("/view/jobToDelete.jsp").forward(request, response);
	}

}
