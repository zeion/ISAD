/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class Member extends Person{
    
    private Connection conn;
    Member(){
        
    }
    
    public Member(String user,String pass,String type,boolean status,String firstname,String lastname,String nickname,
            Date birthday ,String Sex,String address,String province,String phone,String email,String edu,String job,Connection conn){
        this.setUser(user);
        this.setPass(pass);
        this.setType(type);
        this.setStatus(status);
        this.setFirstname(firstname);
        this.setLastname(lastname);
        this.setNickname(nickname);
        this.setBirthday(birthday);
        this.setSex(Sex);
        this.setAddress(address);
        this.setProvince(province);
        this.setPhone(phone);
        this.setEmail(email);
        this.setEdu(edu);
        this.setJob(job);
        this.conn = conn;
    }
    
    public void regMem() {
        try {
            String sqlUP = "INSERT INTO  Member_User values(null,?,?,?,?)";//INSERT INTO  Member_User(member_user,member_pass,member_type,member_status) values("lalala","lalala",0,true)
            
            PreparedStatement pstmtup;
            pstmtup = conn.prepareStatement(sqlUP);
            
            pstmtup.setString(1, this.getUser());
            pstmtup.setString(2, this.getPass());
            pstmtup.setInt(3,0);
            pstmtup.setBoolean(4,false);
            pstmtup.executeUpdate();
            
            String sql = "SELECT member_id FROM Member_User WHERE member_user =\""+this.getUser()+"\"";
            Statement stmt = conn.createStatement();
            this.setId(String.valueOf(stmt.execute(sql)));
            
            sqlUP = "INSERT INTO  Member_Data values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            pstmtup = conn.prepareStatement(sqlUP);
            
            
            pstmtup.setInt(1,10);
            pstmtup.setInt(2,1);
            pstmtup.setString(3,this.getFirstname());
            pstmtup.setString(4,this.getLastname());
            pstmtup.setString(5,this.getNickname());
            pstmtup.setDate(6, new java.sql.Date(this.getBirthday().getTime()));
            pstmtup.setInt(7,this.getSex().equals("male") ? 0 : 1);
            pstmtup.setString(8,this.getAddress());
            pstmtup.setString(9,this.getProvince());
            pstmtup.setString(10,this.getPhone());
            pstmtup.setString(11,this.getEmail());
            pstmtup.setString(12,this.getEdu());
            pstmtup.setString(13,this.getJob());
            pstmtup.executeUpdate();
            
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
