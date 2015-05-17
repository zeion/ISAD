/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.List;

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

    public CalendarDTO(int id, String title, String start, String end, String url,String color) {
        
        this.id = id;
        this.title = title;
        this.start = start;
        this.end = end;
        this.url = url;
        this.color = color;
    }

    public CalendarDTO() {
    }

    public static List getEvent(Connection conn) {

        List l = new ArrayList();

        try {
            
            String sql = "SELECT event_active_ID, event_name, event_day,event_start, event_color "
                    + "FROM Event_Active "
                    + "JOIN Event_List "
                    + "USING (event_ID)";

            DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            
            PreparedStatement stmt;
            stmt = conn.prepareStatement(sql);
            ResultSet member = stmt.executeQuery(sql);
    
            while (member.next()) {
                int id = member.getInt("event_active_ID");
                String title = member.getString("event_name");
                int day = member.getInt("event_day");
                String start = df.format(member.getDate("event_start"));
                Calendar c = Calendar.getInstance();
                String color = member.getString("event_color");
                c.setTime(df.parse(start));
                c.add(Calendar.DATE, day);
                String end = df.format(c.getTime());
                String url = "detailAct.jsp?id=\"" + id + "\"";

                l.add(new CalendarDTO(id, title, start, end, url,color));

            }

            return l;

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

}
