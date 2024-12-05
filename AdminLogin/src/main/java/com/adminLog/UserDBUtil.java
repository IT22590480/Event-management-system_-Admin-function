package com.adminLog;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDBUtil {                        // Data insert to DB
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    public static List<User> validate(String username, String password) {
        ArrayList<User> cus = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "select * from adin where username='" + username + "' and password='" + password + "'";   
            rs = stmt.executeQuery(sql);

            if (rs.next()) {                        //
                int id = rs.getInt(1);
                String username1 = rs.getString(2);
                String password1 = rs.getString(3);

                User c = new User(id, username1,  password1);
                cus.add(c);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return cus;
    }
}
