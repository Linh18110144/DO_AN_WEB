package controllers;

import beans.Category;
import beans.Product;
import models.CategoryModel;
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
    private void addProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("ProName");
        String tinydes = request.getParameter("TinyDes");
        Product c = new Product(-1, name, tinydes);
        ProductModel.add(c);
        ServletUtils.forward("/views/vwMisc/Upload.jsp",request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path=request.getPathInfo();
        if (path==null || path.equals("/")){
            path="/Index";
        }

        switch (path){
            case "/Index":
                int catID1 = ProductModel.countAll();
                request.setAttribute("catID", catID1);

                final int LIMIT1 = 6;
                int currentPage1 = 1;
                if (request.getParameter("page1") != null) {
                    currentPage1 = Integer.parseInt(request.getParameter("page1"));
                }
                int offset1 = (currentPage1 - 1) * LIMIT1;
                request.setAttribute("currentPage1", currentPage1);

                int total1 = catID1;
                int nPages1 = total1 / LIMIT1;
                if (total1 % LIMIT1 > 0)
                    nPages1++;
                int[] pages1 = new int[nPages1];
                for (int i = 0; i < nPages1; i++) {
                    pages1[i] = i + 1;
                }
                request.setAttribute("pages1", pages1);

                List<Product> list1 = ProductModel.getAll(LIMIT1, offset1);

                request.setAttribute("products1", list1);
                ServletUtils.forward("/views/vwProduct/Index.jsp", request, response);
                break;
            default:
                ServletUtils.redirect("/NotFound",request,response);
                break;
        }
    }
}
