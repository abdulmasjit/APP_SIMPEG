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
            String url ="jdbc:mysql://localhost/db_simpeg?serverTimezone=" + TimeZone.getDefault().getID();
            String user="admin";
            String pass="1234";
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


