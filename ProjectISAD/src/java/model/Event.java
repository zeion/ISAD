/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class Event {
    private int id;
    private int event;
    private String title;
    private Date start;
    private int location;
    private int duration;
    private int member_id;
    private Connection conn;
    private String detail;
    private int amount;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getEvent() {
        return event;
    }

    public void setEvent(int event) {
        this.event = event;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getStart() {
        return start;
    }

    public void setStart(Date start) {
        this.start = start;
    }

    public int getLocation() {
        return location;
    }

    public void setLocation(int location) {
        this.location = location;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public int getMember_id() {
        return member_id;
    }

    public void setMember_id(int member_id) {
        this.member_id = member_id;
    }

    public Connection getConn() {
        return conn;
    }

    public void setConn(Connection conn) {
        this.conn = conn;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public DateFormat getDf() {
        return df;
    }

    public void setDf(DateFormat df) {
        this.df = df;
    }

    private DateFormat df = new SimpleDateFormat("dd-MM-yyyy");
    private DateFormat d2 = new SimpleDateFormat("yyyy-MM-dd");
    
    public Event(int member_id,String event, String start, String location, Connection conn, String amount) {
        try {
            this.member_id = member_id;
            this.event = Integer.parseInt(event);        
            this.start  = df.parse(start);
            this.location = Integer.parseInt(location);
            this.conn = conn;
            this.amount = Integer.parseInt(amount);
        } catch (ParseException ex) {
            Logger.getLogger(Event.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Event(int id, String start, int amount, Connection conn) {
        try {
            this.id = id;
            this.start = d2.parse(start);
            this.amount = amount;
            this.conn = conn;
        } catch (ParseException ex) {
            Logger.getLogger(Event.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean creatAct() {

        try {
            
            PreparedStatement pstmtup;
            String sqlUP = "INSERT INTO  Event_Active values(null,?,?,?,?,?)";
            pstmtup = conn.prepareStatement(sqlUP);
            
            pstmtup.setInt(1,this.location);
            pstmtup.setInt(2,this.event);
            pstmtup.setInt(3,this.member_id);
            pstmtup.setDate(4,new java.sql.Date(this.start.getTime()));
            pstmtup.setInt(5,this.amount);
           
            pstmtup.executeUpdate();
            
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(Event.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
    public static boolean deleteAct(String id,Connection conn){
        try {
            PreparedStatement pstmtup;
            String sql = "DELETE FROM Event_Active WHERE event_active_ID = ?";
            pstmtup = conn.prepareStatement(sql);
            pstmtup.setString(1,id);
            pstmtup.executeUpdate();
            
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(Event.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
        public boolean editAct() {

        try {
            
            PreparedStatement pstmtup;
            String sqlUP = "UPDATE Event_Active SET event_start = ?, event_amount = ? WHERE event_active_id = ?;";
            pstmtup = conn.prepareStatement(sqlUP);
            
            pstmtup.setDate(1,new java.sql.Date(this.start.getTime()));
            pstmtup.setInt(2,this.amount);
            pstmtup.setInt(3,this.id);
           
            pstmtup.executeUpdate();
            
            
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(Event.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

}
