package com.adminLog;



import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.List;

import javax.servlet.RequestDispatcher;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            List<User> cusDetails = UserDBUtil.validate(username, password);

            if (cusDetails != null && !cusDetails.isEmpty()) {
                // Login successful
                request.setAttribute("cusDetails", cusDetails);
                RequestDispatcher dis = request.getRequestDispatcher("Suc.jsp");
    			dis.forward(request, response);

            } else {
                // Login unsuccessful
                RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
                dis.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
