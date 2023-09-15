package vn.iuh.edu.fit.controller;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.iuh.edu.fit.models.Account;
import vn.iuh.edu.fit.models.Role;
import vn.iuh.edu.fit.repositories.AccountRepositories;
import vn.iuh.edu.fit.repositories.GrantAccessRepositories;
import vn.iuh.edu.fit.repositories.RoleRepositories;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = {"/ControllerServlet"})
public class ControllerServlet extends HttpServlet {
    private AccountRepositories accountRepositories = new AccountRepositories();
    private RoleRepositories roleRepositories = new RoleRepositories();
    private GrantAccessRepositories grantAccessRepositories = new GrantAccessRepositories();

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    private void AboutUser(HttpServletRequest req, Account acc, String nameRole) {
        req.setAttribute("user", acc);
        req.setAttribute("rolename", nameRole);
    }

    private void AdminRole(HttpServletRequest req) {
        ArrayList<Account> accounts = accountRepositories.getUsers();
        ArrayList<Role> roles = roleRepositories.getRoles();
        System.out.println(accounts);
        req.setAttribute("users", accounts);
        req.setAttribute("roles", roles);
    }

    private void CRUD(HttpServletRequest req, HttpServletResponse resp, String action) throws IOException, ServletException {
        HttpSession session = req.getSession(false);
        if (session != null) {

            String roleName = (String) session.getAttribute("roleName");
            Account acc = (Account) session.getAttribute("userLogin");

            switch (action) {
                case "Create":
                    AboutUser(req, acc, roleName);
                    String username = req.getParameter("username");
                    String password = req.getParameter("password");
                    String email = req.getParameter("email");
                    String phone = req.getParameter("phone");

                    String roleID = req.getParameter("role");
                    System.out.println(roleID);
                    String uid = req.getParameter("id");
                    Account acc_new = new Account(uid, username, password, email, phone, 1);

                    Boolean result_add_account = accountRepositories.addAccount(acc_new);
                    Boolean result_add_Grant_Access = grantAccessRepositories.addGrantAccess(acc_new, new Role(roleID));
                    if (result_add_account && result_add_Grant_Access) {
                        AboutUser(req, acc, roleName);
                        AdminRole(req);
                        req.getRequestDispatcher("WEB-INF/Dashboard.jsp").forward(req, resp);
                    }
                    resp.getWriter().println("them that bai !!!");
                    break;
                case "Delete":
                    String id = req.getParameter("id_user");
                    Boolean result_delete = accountRepositories.deleteAccount(id);
                    if (result_delete) {
                        req.getRequestDispatcher("WEB-INF/Dashboard.jsp").forward(req, resp);
                        resp.getWriter().println("Xoa thanh cong account id : " + id);
                    }
                    resp.getWriter().println("xoa that bai");
                    break;

                case "Update":

                    break;
                default:
            }
        } else {
            resp.getWriter().println("please login !!!");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        if (action.equalsIgnoreCase("login")) {
            String username = req.getParameter("username");
            String password = req.getParameter("password");
            Account acc = accountRepositories.checkLogin(username, password);
            if (acc == null) {
                resp.getWriter().println("wrong password or username !!");
            } else {
                String uid = acc.getAccountId();
                Role role = grantAccessRepositories.getRoleByUid(uid);
                if (role != null) {
                    String nameRole = role.getRoleName();
                    System.out.println(nameRole);
                    HttpSession session = req.getSession();
                    session.setAttribute("userLogin", acc);
                    session.setAttribute("roleName", nameRole);
                    AboutUser(req, acc, nameRole);
                    if (nameRole.equalsIgnoreCase("administrator")) {
                        AdminRole(req);
                        req.getRequestDispatcher("WEB-INF/Dashboard.jsp").forward(req, resp);
                    } else {
                        req.getRequestDispatcher("WEB-INF/Dashboard.jsp").forward(req, resp);
                    }
                } else {
                    resp.getWriter().println("can not access !! !");
                }
            }
        } else if (action.equalsIgnoreCase("addUser")) {
            CRUD(req, resp, "Create");
        } else if (action.equalsIgnoreCase("removeUser")) {
            CRUD(req, resp, "Delete");
        } else if (action.equalsIgnoreCase("UpdateUser")) {
            CRUD(req, resp, "Update");
        }
    }


}
