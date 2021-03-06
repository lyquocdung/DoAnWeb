package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAOContent;
import dao.DAOMember;
import model.Content;

@WebServlet("/SearchContent")
public class SearchContent extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String txtSearchString = request.getParameter("search");
		
		DAOContent daoContent = new DAOContent();
		
		List<Content> list = daoContent.searchContents(txtSearchString);
		
		request.setAttribute("listsearch", list);
		request.setAttribute("keysearch", txtSearchString);
		
		request.getRequestDispatcher("search.tiles").forward(request, response);
	}
 
}