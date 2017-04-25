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

/**
 * Servlet implementation class JobDetailController
 */

@SuppressWarnings("serial")
@WebServlet({ "/jobDetail", "/jobDetail/", "/jobDetail/*" })

public class JobDetailController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*@SuppressWarnings("unused")
		int identificadorTrabajo = Integer.parseInt(request.getParameter("id"));*/
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException	{		
		int identificadorTrabajo = Integer.parseInt(request.getParameter("id"));		
		List<Job> jobs = new JobModel().getJobDetail(identificadorTrabajo);
		for (Job job : jobs) {
			response.getWriter().println(job.getTitulo());
		}
		
		request.setAttribute("jobs", jobs);		
		
		request.getRequestDispatcher("view/jobDetail.jsp").forward(request, response);
	}

}
