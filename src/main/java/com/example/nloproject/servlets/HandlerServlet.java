package com.example.nloproject.servlets;

import com.example.nloproject.abstraction.StepStrategy;
import com.example.nloproject.basis.*;
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
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "handler", value = "/handler")
public class HandlerServlet extends HttpServlet {
    private static final Map<Integer, StepStrategy> strategies = new HashMap<>();
    Gson gson = new Gson();

    static {
        strategies.put(1, new Step1Strategy());
        strategies.put(2, new Step2Strategy());
        strategies.put(3, new Step3Strategy());
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        int step = (int) session.getAttribute("Steps");

        BufferedReader reader = req.getReader();
        String value = gson.fromJson(reader, JsonObject.class)
                .get("answer")
                .getAsString();

        StepStrategy strategy = strategies.get(step);
        String result = strategy.execute(value, session);
        resp.getWriter().write(result);
    }
}