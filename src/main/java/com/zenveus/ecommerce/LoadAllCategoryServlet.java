package com.zenveus.ecommerce;

import com.zenveus.ecommerce.entity.Category;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "LoadAllCategoryServlet", value = "/load-all-category-servlet")
public class LoadAllCategoryServlet extends HttpServlet {
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        System.out.println("LoadAllCategoryServlet is initialized");
        try {
            Context initContext = new InitialContext();
            dataSource = (DataSource) initContext.lookup("java:comp/env/jdbc/pool");
        } catch (NamingException e) {
            throw new ServletException("Failed to lookup DataSource", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("LoadAllCategoryServlet doPost");
        List<Category> categories = new ArrayList<>();
        try (Connection connection = dataSource.getConnection()) {
            String query = "SELECT id, name FROM Category";
            try (PreparedStatement statement = connection.prepareStatement(query);
                 ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    String name = resultSet.getString("name");
                    categories.add(new Category(id, name));
                }
            }
        } catch (Exception e) {
            throw new ServletException("Failed to retrieve categories", e);
        }

        req.setAttribute("category", categories);
        System.out.println("LoadAllCategoryServlet forwarding to admin-portal.jsp>>>>>" + categories);
        req.getSession().setAttribute("category", categories);
        req.getRequestDispatcher("./item.jsp").forward(req, resp);
    }
}
