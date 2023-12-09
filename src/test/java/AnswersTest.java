import com.example.nloproject.basis.Answer;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class AnswersTest {
    @Test
    public void checkVariant1() {
        Answer answer = new Answer();
        String var = "var-1";
        String result = answer.checkVariant(var);
        assertEquals("jsp/main.jsp", result);
    }

    @Test
    public void checkVariant2() {
        Answer answer = new Answer();
        String var = "var-4";
        String result = answer.checkVariant(var);
        assertEquals("jsp/defeat.jsp", result);
    }

    @Test
    public void checkVariant3() {
        Answer answer = new Answer();
        String var = "var-5";
        String result = answer.checkVariant(var);
        assertEquals("jsp/win.jsp", result);
    }
}
