package persistencia;
import java.util.*;
import java.sql.*;

public class ProductoDao {
    public static ArrayList<TreeMap> consultar(){
        ArrayList<TreeMap> listado = new ArrayList();
        Connection con= null;
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection("jdbc:mysql://localhost/labiciloca_db",
                    "educacion","educacion");
            PreparedStatement stmt = con.prepareStatement(
                    " SELECT * FROM productos ");
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                TreeMap<String, String> actual = new TreeMap();
                actual.put("id",  rs.getString("pro_id")   );
                actual.put("nombre",  rs.getString("pro_nombre")   );
                actual.put("precio",  rs.getString("pro_precio")   );
                actual.put("imagen",  rs.getString("pro_imagen")   );
                listado.add(actual);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listado;
    }
}
