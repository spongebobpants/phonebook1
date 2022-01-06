package com.javaex.dao;
import com.javaex.vo.*;
import java.util.List;
import java.util.ArrayList.*;

public class TestDao {
	public static void main(String []args) {
	
		 PhoneDao phoneDao = new PhoneDao();
		    List<PersonVo> personList = phoneDao.getList();
		    
		    System.out.println(personList.toString());
		      
		      

		   }
		}