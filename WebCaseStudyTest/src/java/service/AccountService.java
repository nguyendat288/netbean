/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import dal.AccountDAO;
import java.util.ArrayList;
import model.Account;
import model.Role;

/**
 *
 * @author dell
 */
public class AccountService {
    

    AccountDAO accDao = new AccountDAO();
    public Account checkAcc(String acc , String pass){
        return accDao.check(acc, pass);
    }
    
    public ArrayList<Role> getRole(){
        ArrayList<Role> list = accDao.listRole();
        return list;
    }
    
    public ArrayList<Account> getAllAcc(){
        ArrayList<Account> list = accDao.getAllAccount();
        return list;
    }
//C
    public boolean addAccount(Account a) {
        if (accDao.existUser(a.getAccount())) {
            return false;
        } else {
            accDao.register(a);
            return true;
        }
    }
//R
    public Account login(String acc , String pass){
        return accDao.check(acc, pass);
    }       
// U    
    public void change(String acc , String pass){
        accDao.change(acc, pass);
    }
    //D
     public void delete(int id){
        accDao.deleteAccountById(id);
    }
     
     
    public boolean checkPhone(String phone){
       return accDao.checkPhone(phone);
    }
    public boolean checkEmail(String email){
       return accDao.checkEmail(email);
    }
}
