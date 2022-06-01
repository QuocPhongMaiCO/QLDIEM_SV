package utils;

import java.sql.DriverManager;
import com.microsoft.sqlserver.jdbc.SQLServerConnection;


public class DBConnectionUtils {
	//private static String url = "jdbc:mysql://node236041-nam-bsongs.j.layershift.co.uk/bsong?useUnicode=true&characterEncoding=UTF-8";
		private static String url = "jdbc:sqlserver://DAQPHONG;databaseName=QLDIEM_SV;integratedSecurity=true; encrypt = true; trustServerCertificate=true;";
		private static String user = "sa";
		private static String password = "123456";
		//private static String password = "ISFbci95222";
		private static SQLServerConnection conn = null;
		
		public static SQLServerConnection getConnection() {
			try {
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

				conn = (SQLServerConnection) DriverManager.getConnection(url, user, password);
			} catch (Exception e) {
				System.out.println("Không thể nạp driver" + e.getMessage());
				e.printStackTrace();
			}
			return conn;
		}

		public static void main(String[] args) {
			System.out.println(DBConnectionUtils.getConnection());
		}
}
