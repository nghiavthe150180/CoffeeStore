/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author admin
 */

//CREATE TABLE [dbo].[user] (
//  [id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
//  [surname] NVARCHAR(255) NOT NULL,
//  [middle_name] NVARCHAR(255),
//  [phone_number] NVARCHAR(20),
//  [dob] DATE,
//  [email] NVARCHAR(255),
//  [sex] CHAR(6) NOT NULL CHECK ([sex] IN ('male', 'female'))
//);

public class User {
    int id; 
    String surname; 
    String middle_name; 
    String phone_number; 
    String dob;
    String email; 
    String sex;
    String password;
    String user;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getMiddle_name() {
        return middle_name;
    }

    public void setMiddle_name(String middle_name) {
        this.middle_name = middle_name;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", surname=" + surname + ", middle_name=" + middle_name + ", phone_number=" + phone_number + ", dob=" + dob + ", email=" + email + ", sex=" + sex + '}';
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }
    
    
    
    public User() {
    }

    public User(int id, String surname, String middle_name, String phone_number, String dob, String email, String sex, String password, String user) {
        this.id = id;
        this.surname = surname;
        this.middle_name = middle_name;
        this.phone_number = phone_number;
        this.dob = dob;
        this.email = email;
        this.sex = sex;
        this.password = password;
        this.user = user;
    }

    
    
    
}
