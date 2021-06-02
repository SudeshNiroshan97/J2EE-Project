/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Sudesh Niroshan
 */
public class University {
    private String university;
    private String university_type;
    private String province;
    private String address;
    private String email;
    private String mobilenumber;
    private String started_year;
    private String password;
    private String repassword;

    public University() {
        
    }

    public University(String email, String password,String name) {
        this.university = name;
        this.email = email;
        this.password = password;
    }
    
    

    public University(String university, String university_type, String province, String address, String email, String mobilenumber, String started_year, String password, String repassword) {
        this.university = university;
        this.university_type = university_type;
        this.province = province;
        this.address = address;
        this.email = email;
        this.mobilenumber = mobilenumber;
        this.started_year = started_year;
        this.password = password;
        this.repassword = repassword;
    }
    
    

    public String getUniversity() {
        return university;
    }

    public void setUniversity(String university) {
        this.university = university;
    }

    public String getUniversity_type() {
        return university_type;
    }

    public void setUniversity_type(String university_type) {
        this.university_type = university_type;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobilenumber() {
        return mobilenumber;
    }

    public void setMobilenumber(String mobilenumber) {
        this.mobilenumber = mobilenumber;
    }

    public String getStarted_year() {
        return started_year;
    }

    public void setStarted_year(String started_year) {
        this.started_year = started_year;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRepassword() {
        return repassword;
    }

    public void setRepassword(String repassword) {
        this.repassword = repassword;
    }
    
    
    
    
}
