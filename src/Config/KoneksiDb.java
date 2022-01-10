package Config;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import javax.swing.JTable;

/**
 *
 * @author Iqbal
 */
public class KoneksiDb {
    private final String URL = "jdbc:mysql://localhost:3306/db_sewapc";
    private final String USER = "root";
    private final String PASS = "";
    
    public Connection getConnection(){
        Connection con;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(URL,USER,PASS);
            System.out.println("Koneksi berhasil");
            return con;
        }catch (ClassNotFoundException | SQLException ex) {
            System.err.println("Koneksi gagal");
            return con=null;
        }
    }
    
    public static void main(String[] args) {
        KoneksiDb koneksi = new KoneksiDb();
        koneksi.getConnection();
    } 
}   

