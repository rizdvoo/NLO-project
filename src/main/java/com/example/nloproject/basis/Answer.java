package com.example.nloproject.basis;

public class Answer {
    public String checkVariant(String var) {
        if (var.equals("var-2") || var.equals("var-4") || var.equals("var-6")) {
            return "jsp/defeat.jsp";
        } else if (var.equals("var-1") || var.equals("var-3")) {
            return "jsp/main.jsp";
        } else return "jsp/win.jsp";
    }
}
