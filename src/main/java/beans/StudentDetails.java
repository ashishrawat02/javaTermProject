/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import beans.loginAdmin;
import database.Credentials;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author c0649005
 */
public class StudentDetails {

    private int studentId;
    private String fisrtName;
    private String nameLast;
    private String course;
    private String duration;
    private String address;
    private String birthDate;
    private int phoneNumber;
    private String password;

    public StudentDetails() {
        studentId = 101;
        password = "admin";
    }

    public StudentDetails(int studentId, String fisrtName, String nameLast, String course, String duration, String address, String birthDate, int phoneNumber, String password) {
        this.studentId = studentId;
        this.fisrtName = fisrtName;
        this.nameLast = nameLast;
        this.course = course;
        this.duration = duration;
        this.address = address;
        this.birthDate = birthDate;
        this.phoneNumber = phoneNumber;
        this.password = password;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public String getFisrtName() {
        return fisrtName;
    }

    public void setFisrtName(String fisrtName) {
        this.fisrtName = fisrtName;
    }

    public String getNameLast() {
        return nameLast;
    }

    public void setNameLast(String nameLast) {
        this.nameLast = nameLast;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public static boolean checkStudent(int studentId) {
        boolean check = false;
        try {

            Connection conn = Credentials.getConnection();

            PreparedStatement pstmt = conn.prepareStatement("Select * FROM student WHERE studentId = ?");
            pstmt.setInt(1, studentId);

            ResultSet rs = pstmt.executeQuery();
            check = rs.next();
            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(loginAdmin.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;

    }

}
