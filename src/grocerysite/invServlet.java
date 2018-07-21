package grocerysite;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "invServlet")
public class invServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String newItem = request.getParameter("NewItem");
        String newQty = request.getParameter("NewQty");
        String delItem = request.getParameter("DelItem");

        if (newItem != null) {
            addRemItems.send2Db(newItem, newQty);


        }
        if (delItem != null) {
            addRemItems.delFromDb(delItem);
        }
        //PrintWriter out = response.getWriter();
        //out.print("Success!");
        response.sendRedirect("index.jsp");
    }
}
