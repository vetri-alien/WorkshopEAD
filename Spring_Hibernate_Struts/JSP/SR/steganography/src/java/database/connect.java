

package database;

import java.sql.*;
public class connect {
Connection con;
public Connection getDriver()throws Exception
{
    DriverManager.registerDriver(new sun.jdbc.odbc.JdbcOdbcDriver());
    con=DriverManager.getConnection("jdbc:odbc:stegano","scott","tiger");
    return con;

}
}
