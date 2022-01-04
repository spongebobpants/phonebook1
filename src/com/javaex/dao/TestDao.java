package com.javaex.dao;
import com.javaex.vo.*;
import java.util.List;

public class TestDao {
	public static void main(String []args) {
	
	PhoneDao phoneDao = new PhoneDao();
	List<PersonVo> personList = phoneDao.getPersonList();
	
	System.out.println(personList.toString());
}

}
