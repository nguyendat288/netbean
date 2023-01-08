/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dell
 */
public class Account {
    private int id;
    private String account;
    private String password;
    private String fisrtName;
    private String lastName;
    private String email;
    private String phone;
    private String address;
    private Role role;

    public Account() {
    }
       public Account( String account, String password, String fisrtName, String lastName, String email, String phone, String address, Role role) {
        this.account = account;
        this.password = password;
        this.fisrtName = fisrtName;
        this.lastName = lastName;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.role = role;
    }
    public Account(int id, String account, String password, String fisrtName, String lastName, String email, String phone, String address, Role role) {
        this.id = id;
        this.account = account;
        this.password = password;
        this.fisrtName = fisrtName;
        this.lastName = lastName;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.role = role;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", account=" + account + ", password=" + password + ", fisrtName=" + fisrtName + ", lastName=" + lastName + ", email=" + email + ", phone=" + phone + ", address=" + address + ", role=" + role + '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFisrtName() {
        return fisrtName;
    }

    public void setFisrtName(String fisrtName) {
        this.fisrtName = fisrtName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

}
