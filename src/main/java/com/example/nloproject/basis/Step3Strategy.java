package com.example.nloproject.basis;
import com.example.nloproject.abstraction.StepStrategy;
import jakarta.servlet.http.HttpSession;

public class Step3Strategy extends StepStrategy {
    @Override
    public String execute(String value, HttpSession session) {
        return answer.checkVariant(value);
    }
}
