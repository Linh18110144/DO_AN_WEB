package controllers;

import beans.Product;
import models.ProductModel;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminProductServlet", urlPatterns = "/Admin/Product/*")
public class AdminProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path=request.getPathInfo();
        if (path==null || path.equals("/")){
            path="/Index";
        }

        switch (path){
            case "/Index":
                List<Product> list = ProductModel.getAll();
                request.setAttribute("products", list);
                ServletUtils.forward("/views/vwProduct/Index.jsp", request, response);
                break;

            default:
                ServletUtils.redirect("/NotFound",request,response);
                break;
        }
    }
}
