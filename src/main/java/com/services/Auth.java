package com.services;

import com.entities.Admin;
import com.entities.Customer;

public class Auth {
	public static Customer KH = null;
	public static Admin AD = null;
	
	public static boolean isLoginKH() {
		return Auth.KH != null;		
	}
	
	public static boolean isLoginAD() {
		return Auth.AD != null;		
	}
	
}
