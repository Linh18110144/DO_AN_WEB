package controllers;

import beans.User;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "HomeServlet", urlPatterns = "/Home/*")
public class HomeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/Index";
        }

        switch (path) {
            case "/Index":
                ServletUtils.forward("/views/vwHome/Index.jsp", request, response);
                break;
            case "/About":
                ServletUtils.forward("/views/vwHome/About.jsp", request, response);
                break;
            case "/DK":
                ServletUtils.forward("/views/vwHome/DKvQCHD.jsp", request, response);
                break;
            case "/Baomat":
                ServletUtils.forward("/views/vwHome/AbBaomat.jsp", request, response);
                break;
            case "/Hoantien":
                ServletUtils.forward("/views/vwHome/AbHoantien.jsp", request, response);
                break;
            case "/Chamsoc":
                ServletUtils.forward("/views/vwHome/Chamsoc.jsp", request, response);
                break;
            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }
    }
}
