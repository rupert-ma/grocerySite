package grocerysite;

import java.sql.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;


public class getInv {


    public static ArrayList showInv() {
        ArrayList invArray = new ArrayList();

        try {
            //connection to database
            Connection con = invConnect.getConnection();

            //sql query string and prepared statement created
            String sql = "select * from inventory_list";
            PreparedStatement stmt = con.prepareStatement(sql);
            //method to execute the query
            ResultSet rs = stmt.executeQuery(sql);
            //returns the result set
            while ((rs.next())) {
                invArray.add(rs.getString("inventory_item") + ", " + rs.getString("inventory_amount"));
            }
            con.close();
        } catch (Exception exc) {
            exc.printStackTrace();
        }
        //System.out.println(invArray);

        return invArray;
    }
}