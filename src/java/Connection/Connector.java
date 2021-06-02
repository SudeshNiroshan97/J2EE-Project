package Connection;

 

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.SQLException;

import javax.swing.JOptionPane;

 

/**

*

* @author Navigator

*/

public class Connector {

    public static void main(String[] args) {

        ConnectDb();

    }

 

    public static Connection ConnectDb() {

        Connection connection = null;

        try {

 

            Class.forName("com.mysql.jdbc.Driver");

            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb?useSSL=true", "root", "");

//            JOptionPane.showMessageDialog(null, "Connection Established");

            return connection;

        } catch (ClassNotFoundException | SQLException ex) {

            JOptionPane.showMessageDialog(null, ex);

        }

        return connection;

    }

   

}