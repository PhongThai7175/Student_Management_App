
package Data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DatabaseAcc {
    static Connection con;
    public static Connection getDatabaseAcc(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try {
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/asmjava3","root","");
            } catch (SQLException ex) {
                Logger.getLogger(DatabaseAcc.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DatabaseAcc.class.getName()).log(Level.SEVERE, null, ex);
        }
    return con;
    }
}
