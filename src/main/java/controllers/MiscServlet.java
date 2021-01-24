package controllers;

import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;

@WebServlet(name = "MiscServlet", urlPatterns = "/Misc/*")
@MultipartConfig(
        fileSizeThreshold = 2 * 1024 * 1024,
        maxFileSize = 50 * 1024 * 1024,
        maxRequestSize = 50 * 1024 * 1024
)
public class MiscServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/Upload":
                postUpload(request, response);
                break;
            case "/Editor":
                postEditor(request, response);
                break;
            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }
    }

    private void postUpload(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(request.getParameter("CourseName"));
        System.out.println(request.getParameter("Desc"));

        for (Part part : request.getParts()) {
            String contentDisp = part.getHeader("content-disposition");
            String[] items = contentDisp.split(";");
            for (String s : items) {
                String tmp = s.trim();
                if (tmp.startsWith("filename")) {
                    int idx = tmp.indexOf('=') + 2;
                    String filename = tmp.substring(idx, tmp.length() - 1);

                    String targetDir = this.getServletContext().getRealPath("publicsss/clips");
                    File dir = new File(targetDir);
                    if (!dir.exists()) {
                        dir.mkdir();
                    }

                    String destination = targetDir + "/" + filename;
                    part.write(destination);
                }
            }
        }

        ServletUtils.forward("/views/vwMisc/Upload.jsp", request, response);
    }

    private void postEditor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String desc = request.getParameter("desc");
        System.out.println(desc);
        ServletUtils.forward("/views/vwMisc/Editor.jsp", request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/Index";
        }
        switch (path) {
            case "/Index":
		int proID = Integer.parseInt(request.getParameter("id"));
                Optional<Product> c = ProductModel.findByID(proID);
                if (c.isPresent()) {
                    request.setAttribute("product5", c.get());
                    ServletUtils.forward("/views/vwMisc/Index.jsp", request, response);
                } else {
                    ServletUtils.redirect("/Home", request, response);
                }
                break;                     
            case "/Upload":
                ServletUtils.forward("/views/vwMisc/Upload.jsp", request, response);
                break;
            case "/Editor":
                ServletUtils.forward("/views/vwMisc/Editor.jsp", request, response);
                break;
            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }
    }
}
