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
public class Company {
    private String name;
    private String email;
    private String province;
    private String web;
    private String phone;
    private String password;
    private String repassword;

    public Company() {
    }

        public Company(String email, String password, String name) {
        this.email = email;
        this.password = password;
        this.name = name;
    }
    
    
    

    public Company(String name, String email, String province, String web, String phone, String password, String repassword) {
        this.name = name;
        this.email = email;
        this.province = province;
        this.web = web;
        this.phone = phone;
        this.password = password;
        this.repassword = repassword;
    }
    
    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getWeb() {
        return web;
    }

    public void setWeb(String web) {
        this.web = web;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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
