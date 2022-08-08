package com.example.cookies_task1;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(value = "/home")
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("text");
        if(name!=null) {
            Cookie cookie = new Cookie("nameOfASite", name);
            cookie.setMaxAge(120);
            response.addCookie(cookie);
        }
        response.sendRedirect("/home");


    }
}