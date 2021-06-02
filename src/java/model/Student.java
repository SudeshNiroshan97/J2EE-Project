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
public class Student {
    
    
    private String first_name;
    private String last_name;
    private String email;
    private String university;
    private String faculty;
    private String phonenumber;
    private String password;
    private String repassword;

    public Student() {
    }

    public Student(String email, String password, String name) {
        this.email = email;
        this.password = password;
        this.first_name = name;
    }
    
    
    

    public Student(String first_name, String last_name, String email, String university, String faculty, String phonenumber, String password, String repassword) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.email = email;
        this.university = university;
        this.faculty = faculty;
        this.phonenumber = phonenumber;
        this.password = password;
        this.repassword = repassword;
    }
    
    

    public String getFirst_name() {
        return first_name;
    }

    public void nawadme(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getEmail() {
        return email;
    }
    
    public void setFirst_name(String first_name){
        this.first_name = first_name;
    
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUniversity() {
        return university;
    }

    public void setUniversity(String university) {
        this.university = university;
    }

    public String getFaculty() {
        return faculty;
    }

    public void setFaculty(String faculty) {
        this.faculty = faculty;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
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
