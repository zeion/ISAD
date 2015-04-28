/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

/**
 *
 * @author Admin
 */
public class CalendarDTO {
    private int id;
    private String title;
    private String start;
    private String end;
    private int duration;
    private String color;
    private String url;
    private Connection conn;
    private String detail;
    
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
    public String getColor() {
        return color;
    }
    public void setColor(String color) {
        this.color = color;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getStart() {
        return start;
    }
    public void setStart(String start) {
        this.start = start;
    }
    public String getEnd() {
        return end;
    }
    public void setEnd(String end) {
        this.end = end;
    }

    public CalendarDTO(int id, String title, String start, int duration, String url, Connection conn) {
        this.id = id;
        this.title = title;
        this.start = start;
        this.duration = duration;
        this.url = url;
        this.conn = conn;
    }





    public CalendarDTO() {
    }
    
    public void getEvent() {
        try {
            String sqlUP = "SELECT ev_enable_ID,";//INSERT INTO  Member_User(member_user,member_pass,member_type,member_status) values("lalala","lalala",0,true)
            
            PreparedStatement pstmtup;
            pstmtup = conn.prepareStatement(sqlUP);
            
//            pstmtup.setString(1, );
//            pstmtup.setString(2, );
            pstmtup.setInt(3,0);
            pstmtup.setBoolean(4,false);
//            pstmtup.executeUpdate();
            
            String sql = "SELECT member_id FROM Member_User WHERE member_user =\""+"\"";
            Statement stmt = conn.createStatement();
//            this.setId(String.valueOf(stmt.execute(sql)));
            
            sqlUP = "INSERT INTO  Member_Data values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            pstmtup = conn.prepareStatement(sqlUP);
            
            
            pstmtup.setInt(1,10);
            pstmtup.setInt(2,1);
//            pstmtup.setString(3,this.getFirstname());
//            pstmtup.setString(4,this.getLastname());
//            pstmtup.setString(5,this.getNickname());
//            pstmtup.setDate(6, new java.sql.Date(this.getBirthday().getTime()));
//            pstmtup.setInt(7,this.getSex().equals("male") ? 0 : 1);
//            pstmtup.setString(8,this.getAddress());
//            pstmtup.setString(9,this.getProvince());
//            pstmtup.setString(10,this.getPhone());
//            pstmtup.setString(11,this.getEmail());
//            pstmtup.setString(12,this.getEdu());
//            pstmtup.setString(13,this.getJob());
//            pstmtup.executeUpdate();
            
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    
    
}
