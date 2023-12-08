package com.example.nloproject.servlets;

import com.example.nloproject.basis.Answer;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.BufferedReader;
import java.io.IOException;

@WebServlet(name = "handler", value = "/handler")
public class HandlerServlet extends HttpServlet {
    Answer answer = new Answer();
    Gson gson = new Gson();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        int step = (int) session.getAttribute("Steps");

        BufferedReader reader = req.getReader();
        String value = gson.fromJson(reader, JsonObject.class)
                .get("answer")
                .getAsString();

        if (step == 1) {
            String result = answer.checkVariant(value);
            session.setAttribute("Steps", 2);
            resp.getWriter().write(result);
        } else if (step == 2) {
            String result = answer.checkVariant(value);
            session.setAttribute("Steps", 3);
            resp.getWriter().write(result);
        } else if (step == 3) {
            String result = answer.checkVariant(value);
            resp.getWriter().write(result);
        }

    }
}