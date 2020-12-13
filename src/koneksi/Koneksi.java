package koneksi;
import java.sql.Connection;
import java.util.TimeZone;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class Koneksi {
    Connection koneksi;
    
    public static Connection Koneksi() {
        try {
            String url ="jdbc:mysql://localhost:8111/db_simpeg?serverTimezone=" + TimeZone.getDefault().getID();
            String user="root";
            String pass="";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection koneksi = DriverManager.getConnection(url,user,pass);
            System.out.println("koneksi berhasil");
            return koneksi;
        } catch(ClassNotFoundException | SQLException e) {
            JOptionPane.showMessageDialog(null, e);
            System.out.println("koneksi gagal " +e.getMessage());
            return null;
        }
    }
}

//import java.sql.DriverManager;
//import java.sql.SQLException;
//import java.sql.Statement;
//import java.util.TimeZone;
// 
//public class Koneksi {
//    public static Connection con;
//    public static Statement stm;
//    public static void main(String args[]){
//        try {
//            // String url ="jdbc:mysql://localhost:8111/db_simpeg?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
//            String url ="jdbc:mysql://localhost:8111/db_simpeg?serverTimezone=" + TimeZone.getDefault().getID();
//            String user="root";
//            String pass="";
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            con =DriverManager.getConnection(url,user,pass);
//            stm = con.createStatement();
//            System.out.println("koneksi berhasil");
//        } catch (ClassNotFoundException | SQLException e) {
//            System.err.println("koneksi gagal " +e.getMessage());
//        }
//    }
//}



