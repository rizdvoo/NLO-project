package com.example.nloproject;

import java.io.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "init", value = "/init")
public class InitServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(true);
        response.setContentType("text/xml;charset=UTF-8");

        String localFilePath = "C:\\Users\\byvas\\IdeaProjects\\NLO-project\\src\\main\\webapp\\jsp\\main.jsp";
        String realPath = getServletContext().getRealPath(localFilePath);

        File file = new File(realPath);

        if (file.exists()) {
            response.sendRedirect("file://" + realPath);
        } else response.getWriter().println("File not found.");
    }
}