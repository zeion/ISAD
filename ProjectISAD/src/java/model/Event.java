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

    private DateFormat df = new SimpleDateFormat("dd-MM-yyyy");
    
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

}
