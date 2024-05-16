package mavenproject.com;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/addbookbd")
public class AddBooksToBDServlet extends HttpServlet {
    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String DB_URL = "jdbc:mysql://127.0.0.1:3306/oop-website";
    private static final String USER = "root";
    private static final String PASSWORD = "HybridsN11";

    @Override
    public void init() throws ServletException {
        super.init();

        checkDBConnection();
    }

    private void checkDBConnection() {
        Connection conn = null;
        try {
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            System.out.println("Подключение к базе данных успешно.");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            System.err.println("Ошибка при подключении к базе данных: " + e.getMessage());
        } finally {
            try {
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        PrintWriter out = response.getWriter();
        Connection conn = null;
        Statement stmt = null;

        try {
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            stmt = conn.createStatement();
            String sql;
            sql = "SELECT * FROM books";
            ResultSet rs = stmt.executeQuery(sql);

            List<Book> books = new ArrayList<>();
            while (rs.next()) {
                Book book = new Book(
                        rs.getString("bookTitle"),
                        rs.getString("author"),
                        rs.getInt("pageCount"),
                        rs.getString("publisher"),
                        rs.getInt("id"),
                        rs.getString("isbn"),
                        rs.getInt("publicationYear"),
                        rs.getString("descriptionOfBook")
                );
                books.add(book);
                System.out.println(book);
            }
            Gson gson = new GsonBuilder().create();
            out.print(gson.toJson(books));

            rs.close();
            stmt.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Ошибка при чтении списка книг из базы данных");
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        Gson gson = new GsonBuilder().create();
        Book book = gson.fromJson(request.getReader(), Book.class);

        Connection conn = null;
        Statement stmt = null;

        try {
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            stmt = conn.createStatement();
            String sql = "INSERT INTO books (bookTitle, author, pageCount, publisher, id, isbn, publicationYear, descriptionOfBook) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1, book.getBookTitle());
            preparedStatement.setString(2, book.getAuthor());
            preparedStatement.setInt(3, book.getPageCount());
            preparedStatement.setString(4, book.getPublisher());
            preparedStatement.setInt(5, book.getId());
            preparedStatement.setString(6, book.getIsbn());
            preparedStatement.setInt(7, book.getPublicationYear());
            preparedStatement.setString(8, book.getDescription());
            preparedStatement.executeUpdate();

            preparedStatement.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Ошибка при записи книги в базу данных");
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }
}