package ddit.util;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class PageHref {
    // 메시지 알림창을 띄운 후 명시한 URL로 이동합니다.
    public static void alertLocation(HttpServletResponse response, String msg, String url) {
        try {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter writer = response.getWriter();
            String script = ""
                          + "<script>"
                          + "    alert('" + msg + "');"
                          + "    location.href='" + url + "';"
                          + "</script>";
            writer.print(script);
        }
        catch (Exception e) {}
    }

    // 메시지 알림창을 띄운 후 이전 페이지로 돌아갑니다.
    public static void alertBack(HttpServletResponse response, String msg) {
        try {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter writer = response.getWriter();
            String script = ""
                          + "<script>"
                          + "    alert('" + msg + "');"
                          + "    history.back();"
                          + "</script>";
            writer.print(script);
        }
        catch (Exception e) {}
    }
}
