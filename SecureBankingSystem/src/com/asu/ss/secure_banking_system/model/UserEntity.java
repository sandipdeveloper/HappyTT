package com.asu.ss.secure_banking_system.model;

import java.util.ArrayList;

import javax.persistence.Column;
import javax.persistence.Id;

public class UserEntity {

@Id
@Column(name="USER_ID")
private String userID;
/**
 * @return the userID
 */
public String getUserID() {
	return userID;
}
/**
 * @param userID the userID to set
 */
public void setUserID(String userID) {
	this.userID = userID;
}
/**
 * @return the accounts
 */
public ArrayList<AccountEntity> getAccounts() {
	return accounts;
}
/**
 * @param accounts the accounts to set
 */
public void setAccounts(ArrayList<AccountEntity> accounts) {
	this.accounts = accounts;
}
/**
 * @return the roles
 */
public ArrayList<RoleEntity> getRoles() {
	return roles;
}
/**
 * @param roles the roles to set
 */
public void setRoles(ArrayList<RoleEntity> roles) {
	this.roles = roles;
}

private ArrayList<AccountEntity> accounts;
private ArrayList<RoleEntity> roles;


}
