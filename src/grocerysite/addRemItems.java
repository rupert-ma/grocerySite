package grocerysite;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class addRemItems {
    public static void send2Db(String newItem, String newQty) {
        try {
// Get Connection
            Connection con = invConnect.getConnection();

            String sql = "insert into inventory_list (inventory_item, inventory_amount) values (?,?)";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, newItem);
            stmt.setString(2, newQty);
            stmt.executeUpdate();
            con.close();
        } catch (Exception exc) {
            exc.printStackTrace();
        }
    }

    public static void delFromDb(String delItem) {
        try {
// Get Connection
            Connection con = invConnect.getConnection();

            String sqlrem = "delete from inventory_list where inventory_item = ?";
            PreparedStatement stmtrem = con.prepareStatement(sqlrem);
            stmtrem.setString(1, delItem);
            stmtrem.executeUpdate();
            con.close();
        } catch (Exception exc) {
            exc.printStackTrace();
        }
    }

}

