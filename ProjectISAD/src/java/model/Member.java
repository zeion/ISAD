/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class Member extends Person {

    private Connection conn;
    private int age;

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public Member() {

    }

    public Member(String user, String pass, String type, boolean status, String location, String firstname, String lastname, String nickname,
            Date birthday, String Sex, String address, String province, String phone, String email, String edu, String job, Connection conn) {
        this.setUser(user);
        this.setPass(pass);
        this.setType(type);
        this.setStatus(status);
        this.setLocation(location);
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

    public Member(int id, String user, String pass, String type, boolean status, String location, String firstname, String lastname, String nickname,
            Date birthday, String Sex, String address, String province, String phone, String email, String edu, String job) {
        this.setId(id);
        this.setUser(user);
        this.setPass(pass);
        this.setType(type);
        this.setStatus(status);
        this.setLocation(location);
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
    }

    public Member(String user, String pass, String type, boolean status, String firstname, String lastname, String nickname,
            Date birthday, String Sex, String province, String phone, String email, Connection conn) {
        this.setUser(user);
        this.setPass(pass);
        this.setType(type);
        this.setStatus(status);
        this.setFirstname(firstname);
        this.setLastname(lastname);
        this.setNickname(nickname);
        this.setBirthday(birthday);
        this.setSex(Sex);
        this.setProvince(province);
        this.setPhone(phone);
        this.setEmail(email);
        this.conn = conn;
    }

    public Member(int id, String firstname, String lastname, String nickname,
            Date birthday, String province, String job) {
        this.setId(id);
        this.setFirstname(firstname);
        this.setLastname(lastname);
        this.setNickname(nickname);
        this.setBirthday(birthday);
        this.setProvince(province);
        this.setJob(job);
    }

    public Member(int id,String nickname, String edu, String job, String address, String province, String phone, Connection conn) {
        this.setId(id);
        this.setNickname(nickname);
        this.setEdu(edu);
        this.setJob(job);
        this.setAddress(address);
        this.setProvince(province);
        this.setPhone(phone);
        this.conn = conn;
    }

    public boolean regMem() {
        try {
            String sqlUP = "INSERT INTO  Member_User values(null,?,?,?,?)";//INSERT INTO  Member_User(member_user,member_pass,member_type,member_status) values("lalala","lalala",0,true)

            PreparedStatement pstmtup;
            pstmtup = conn.prepareStatement(sqlUP);

            pstmtup.setString(1, this.getUser());
            pstmtup.setString(2, this.getPass());
            pstmtup.setInt(3, 0);
            pstmtup.setBoolean(4, false);
            pstmtup.executeUpdate();

            String sql = "SELECT member_id FROM Member_User WHERE member_user =\"" + this.getUser() + "\"";
            Statement stmt = conn.createStatement();
            ResultSet resultSet = stmt.executeQuery(sql);
            resultSet.next();
            this.setId(resultSet.getInt("member_id"));

            sqlUP = "INSERT INTO  Member_Data values(?,?,?,?,?,?,?,null,?,?,?,null,null)";
            pstmtup = conn.prepareStatement(sqlUP);

            pstmtup.setInt(1, this.getId());
            pstmtup.setInt(2, 1);
            pstmtup.setString(3, this.getFirstname());
            pstmtup.setString(4, this.getLastname());
            pstmtup.setString(5, this.getNickname());
            pstmtup.setDate(6, new java.sql.Date(this.getBirthday().getTime()));
            pstmtup.setInt(7, this.getSex().equals("male") ? 0 : 1);
            pstmtup.setString(8, this.getProvince());
            pstmtup.setString(9, this.getPhone());
            pstmtup.setString(10, this.getEmail());
            pstmtup.executeUpdate();

            return true;

        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public static ResultSet showMem(String location, Connection conn) {
        try {
            String sql = "SELECT * FROM Member_User JOIN Member_Data USING (member_id) WHERE member_status = true AND member_type = 0;";

//            if(!location.isEmpty()){
//                sql += "WHERE location_ID =\""+location+"\"";
//            }
            Statement stmt = conn.createStatement();
            ResultSet member = stmt.executeQuery(sql);
            return member;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }
    
    public int editMem(){
        try {
            String sql = "UPDATE Member_Data SET member_nickname = ?, member_edu = ?, member_job = ?, member_address = ?, member_province = ?, member_phone = ? WHERE member_id = ?;";           
            PreparedStatement pstmtup;
            pstmtup = conn.prepareStatement(sql);
            pstmtup.setString(1, this.getNickname());
            pstmtup.setString(2, this.getEdu());
            pstmtup.setString(3, this.getJob());
            pstmtup.setString(4, this.getAddress());
            pstmtup.setString(5, this.getProvince());
            pstmtup.setString(6, this.getPhone());
            pstmtup.setString(7,String.valueOf(this.getId()));
               
            return pstmtup.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Member.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
        }
    }
}
