package controllers;

import at.favre.lib.crypto.bcrypt.BCrypt;
import beans.Product;
import beans.User;
import models.UserModel;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@WebServlet(name = "AccountServlet", urlPatterns = "/Account/*")
public class AccountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/TeacherRegister":
                postTeacherRegister(request, response);
                break;
            case "/Register":
                postRegister(request, response);
                break;
            case "/Login":
                postLogin(request, response);
                break;
            case "/Logout":
                postLogout(request, response);
                break;
            case "/Profile":
                postProfile(request, response);
                break;
            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }
    }

    private void postProfile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("authUser");

        String password = request.getParameter("password");
        BCrypt.Result result1 = BCrypt.verifyer().verify(password.toCharArray(), user.getPassword());

        if (result1.verified == false)
        {
            request.setAttribute("errorMessage", "Invalid password.");
            ServletUtils.forward("/views/vwAccount/Profile.jsp", request, response);
        }

        String Name = request.getParameter("name");
        String Email = request.getParameter("email");
        String NewPassword = request.getParameter("newpassword");
        String bcryptHashString1 = BCrypt.withDefaults().hashToString(12, NewPassword.toCharArray());

        user.setName(Name);
        user.setEmail(Email);
        user.setPassword(bcryptHashString1);


        UserModel.Update(user);
        ServletUtils.redirect("/Home", request, response);
    }

    private void postRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String password = request.getParameter("password");
        String bcryptHashString = BCrypt.withDefaults().hashToString(12, password.toCharArray());


        Date dob = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        try {
            dob = formatter.parse(request.getParameter("dob"));
        } catch (ParseException e) {
            e.printStackTrace();
        }

        String username = request.getParameter("username");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        int permission = 0;
        User user = new User(-1, username, bcryptHashString, name, email, dob, permission);
        UserModel.add(user);
        ServletUtils.redirect("/Home", request, response);
    }

    private void postTeacherRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String password = request.getParameter("password");
        String bcryptHashString = BCrypt.withDefaults().hashToString(12, password.toCharArray());


        Date dob = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        try {
            dob = formatter.parse(request.getParameter("dob"));
        } catch (ParseException e) {
            e.printStackTrace();
        }

        String username = request.getParameter("username");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        int permission = 1;
        User user = new User(-1, username, bcryptHashString, name, email, dob, permission);
        UserModel.add(user);
        ServletUtils.redirect("/Home", request, response);
    }

    private void postLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Optional<User> user = UserModel.findByUserName(username);
        if (user.isPresent()) {
            BCrypt.Result result = BCrypt.verifyer().verify(password.toCharArray(), user.get().getPassword());
            if (result.verified) {
                HttpSession session = request.getSession();
                session.setAttribute("auth", true);
                session.setAttribute("authUser", user.get());
                User user2= (User) session.getAttribute("authUser");
                int id=user2.getPermission();
                String url = (String) session.getAttribute("retUrl");
                if(id==1 || id==2)
                {
                    if (url == null) url = "/Admin/Product";
                    ServletUtils.redirect(url, request, response);
                }
                if(id==0)
                {
                    if (url == null) url = "/Home";
                    ServletUtils.redirect(url, request, response);
                }

            } else {
                request.setAttribute("hasError", true);
                request.setAttribute("errorMessage", "Invalid password.");
                ServletUtils.forward("/views/vwAccount/Login.jsp", request, response);
            }
        } else {
            request.setAttribute("hasError", true);
            request.setAttribute("errorMessage", "Invalid login.");
            ServletUtils.forward("/views/vwAccount/Login.jsp", request, response);
        }
    }

    private void postLogout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("auth", false);
        session.setAttribute("authUser", new User());

        String url = request.getHeader("referer");
        if (url == null) url = "/Home";
        ServletUtils.redirect(url, request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/TeacherRegister":
                HttpSession session = request.getSession();
                User user2 = (User) session.getAttribute("authUser");
                int id = user2.getPermission();
                if(id==2){
                    ServletUtils.forward("/views/vwAccount/Admin.jsp", request, response);
                }
                else{
                    ServletUtils.forward("/views/vwHome/Index.jsp", request, response);
                }
                break;
            case "/Teacher":
                HttpSession session1 = request.getSession();
                User user3 = (User) session1.getAttribute("authUser");
                int id1 = user3.getPermission();
                System.out.println(id1);
                if(id1==1){
                    ServletUtils.redirect("/Admin/Product", request, response);
                }
                else{
                    ServletUtils.forward("/views/vwHome/Index.jsp", request, response);
                }
                break;
            case "/Register":
                ServletUtils.forward("/views/vwAccount/Register.jsp", request, response);
                break;
            case "/Login":
                request.setAttribute("hasError", false);
                ServletUtils.forward("/views/vwAccount/Login.jsp", request, response);
                break;
            case "/Profile":
                ServletUtils.forward("/views/vwAccount/Profile.jsp", request, response);
                break;
            case "/IsAvailable":
                String username = request.getParameter("user");
                Optional<User> user = UserModel.findByUserName(username);
                PrintWriter out = response.getWriter();
                response.setContentType("application/json");
                response.setCharacterEncoding("utf-8");
                out.print(!user.isPresent());
                out.flush();
                break;
            case "/IsEmailAvailable":
                String email = request.getParameter("user");
                Optional<User> user1 = UserModel.findByEmail(email);
                PrintWriter out1 = response.getWriter();
                response.setContentType("application/json");
                response.setCharacterEncoding("utf-8");
                out1.print(!user1.isPresent());
                out1.flush();
                break;
            case "/ListUser":
                HttpSession session2=request.getSession();
                User userL = (User) session2.getAttribute("authUser");
                int id2 = userL.getPermission();
                if(id2==0 || id2==1){
                    ServletUtils.redirect("/Home", request, response);
                    break;
                }
                List<User> user4 = UserModel.getPerGV();
                request.setAttribute("userA", user4);
                List<User> user5 = UserModel.getPer();
                request.setAttribute("userB", user5);
                ServletUtils.forward("/views/vwAccount/User.jsp", request, response);
                break;
            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }
    }
}
