package com.example.nloproject.abstraction;

import com.example.nloproject.basis.Answer;
import jakarta.servlet.http.HttpSession;

public abstract class StepStrategy {
    public Answer answer = new Answer();
    public abstract String execute(String value, HttpSession session);
}
