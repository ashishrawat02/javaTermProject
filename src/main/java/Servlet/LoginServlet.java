/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import login.LoginChecking;

/**
 *
 * @author c0649005
 */
public class LoginServlet extends HttpServlet{  
  
   
  
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)    
            throws ServletException, IOException {    
  
        response.setContentType("text/html");    
        try (PrintWriter out = response.getWriter()) {
            int s= Integer.parseInt(request.getParameter("stuentId"));
            System.out.println(s+"tfgyhujktyuhj");
            String p=request.getParameter("password");
            
            HttpSession session = request.getSession(false);
            if(session!=null)
                session.setAttribute("studentId", s);
            
            if(LoginChecking.validate(s, p)){
                RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
                rd.forward(request,response);
            }
            else{
                out.print("<p style=\"color:red\">Sorry student Id or password error</p>");
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                rd.include(request,response);
            }
        }    
    }    
}  
