/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

/**
 *
 * @author Admin
 */
public class Person {

    private String user;
    private String pass;
    private String type;
    private boolean status;
    private int id;
    private String location;
    private String firstname;
    private String lastname;
    private String nickname;
    private Date birthday;
    private String sex;
    private String address;
    private String province;
    private String phone;
    private String email;
    private String edu;
    private String job;

    public Person() {
    }

    public Person(String type, boolean status, int id,String location, String firstname, String lastname, String email) {
        this.type = type;
        this.status = status;
        this.id = id;
        this.location = location;
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
    }

    
    
    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEdu() {
        return edu;
    }

    public void setEdu(String edu) {
        this.edu = edu;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public static Person getLoginData(int id ,Connection conn){
        try{
            String sql = "SELECT * "
                    + "FROM Member_User "
                    + "JOIN Member_Data "
                    + "USING (member_id) "
                    + "JOIN Location "
                    + "USING (location_id) "
                    + "WHERE member_id = "+id;
            PreparedStatement pstmtup;
            pstmtup = conn.prepareStatement(sql);
            System.out.println("id : " + id);
            ResultSet member = pstmtup.executeQuery(sql);        
            member.next();
            System.out.println("Type : "+member.getString("member_type"));
            Person person = new Person(member.getString("member_type"),member.getBoolean("member_status"), member.getInt("member_ID"),member.getString("location_ID"), member.getString("member_firstname"),member.getString("member_lastname"), member.getString("member_email"));
            return person;
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return null;
    }
}
