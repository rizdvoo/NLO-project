package com.example.nloproject.basis;

import com.example.nloproject.abstraction.StepStrategy;
import jakarta.servlet.http.HttpSession;

public class Step2Strategy extends StepStrategy {
    @Override
    public String execute(String value, HttpSession session) {
        session.setAttribute("Steps", 3);
        return answer.checkVariant(value);
    }
}
