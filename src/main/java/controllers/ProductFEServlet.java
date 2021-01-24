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
import java.util.Optional;

@WebServlet(name = "ProductFEServlet", urlPatterns = "/Product/*")
public class ProductFEServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/Home";
        }
        switch (path) {

            case "/ByCat":
                int catID = Integer.parseInt(request.getParameter("id"));
                request.setAttribute("catID", catID);

                final int LIMIT = 6;
                int currentPage = 1;
                if (request.getParameter("page") != null) {
                    currentPage = Integer.parseInt(request.getParameter("page"));
                }
                int offset = (currentPage - 1) * LIMIT;
                request.setAttribute("currentPage", currentPage);

                int total = ProductModel.countByCatID(catID);
                int nPages = total / LIMIT;
                if (total % LIMIT > 0)
                    nPages++;
                int[] pages = new int[nPages];
                for (int i = 0; i < nPages; i++) {
                    pages[i] = i + 1;
                }
                request.setAttribute("pages", pages);

                List<Product> list = ProductModel.findByCatID(catID, LIMIT, offset);
                request.setAttribute("products", list);

                // List<Category> categories = (List<Category>) request.getAttribute("categoriesWithDetails");
                // System.out.println(categories.size());

                ServletUtils.forward("/views/vwProduct/ByCat.jsp", request, response);
                break;

            case "/ByChildCat":
                int childCatID = Integer.parseInt(request.getParameter("id"));
                List<Product> list3 = ProductModel.findByChildCatID(childCatID);
                request.setAttribute("products3", list3);

                ServletUtils.forward("/views/vwProduct/ByChildCat.jsp", request, response);
                break;

            case "/Detail":
                int proID = Integer.parseInt(request.getParameter("id"));
                Optional<Product> c = ProductModel.findByID(proID);
                if (c.isPresent()) {
                    request.setAttribute("product", c.get());
                    ServletUtils.forward("/views/vwProduct/Detail.jsp", request, response);
                } else {
                    ServletUtils.redirect("/Home", request, response);
                }
                break;
            case "/Search":
                String proName = request.getParameter("id");
                request.setAttribute("proName", proName);
                int catID2 = ProductModel.countByProName(proName);
                request.setAttribute("catID2", catID2);

                final int LIMIT2 = 6;
                int currentPage2 = 1;
                if (request.getParameter("page2") != null) {
                    currentPage2 = Integer.parseInt(request.getParameter("page2"));
                }
                int offset2 = (currentPage2 - 1) * LIMIT2;
                request.setAttribute("currentPage2", currentPage2);

                int total2 = catID2;
                int nPages2 = total2 / LIMIT2;
                if (total2 % LIMIT2 > 0)
                    nPages2++;
                int[] pages2 = new int[nPages2];
                for (int i = 0; i < nPages2; i++) {
                    pages2[i] = i + 1;
                }
                request.setAttribute("pages2", pages2);

                List<Product> list2 = ProductModel.findByProName(proName, LIMIT2, offset2);

                request.setAttribute("products2", list2);

                ServletUtils.forward("/views/vwProduct/Search.jsp", request, response);
                break;
            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }
    }
}
