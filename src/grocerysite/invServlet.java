package grocerysite;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "invServlet")
public class invServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String newItem = request.getParameter("NewItem");
        String newQty = request.getParameter("NewQty");
        String delItem = request.getParameter("DelItem");
        ArrayList invArray = getInv.showInv();


        if (newItem != null) {
            addRemItems.send2Db(newItem, newQty);

        }
        if (delItem != null) {
            addRemItems.delFromDb(delItem);
        } else {
            request.setAttribute("showInv", invArray);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        // PrintWriter out = response.getWriter();
        //out.print("test");
        response.sendRedirect("index.jsp");
    }


}

