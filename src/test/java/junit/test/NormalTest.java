package junit.test;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.junit.Test;

import com.atguigu.survey.entities.guest.Employee;
import com.atguigu.survey.utils.DataProcessUtils;

//测试普通的类方法;与IOC容器无关.
public class NormalTest {

	
	/**
	 	manager_log_2015_10
		manager_log_2015_11
		manager_log_2015_12
		manager_log_2016_01
		manager_log_2016_02
		manager_log_2016_03
		manager_log_2016_04
		manager_log_2016_05
		manager_log_2016_06
		manager_log_2016_07
		manager_log_2016_08
		manager_log_2016_09
		manager_log_2016_10  上个月
		manager_log_2016_11  当前月
		manager_log_2016_12  下个月
		manager_log_2017_01
		manager_log_2017_02
		manager_log_2017_03
		manager_log_2017_04
	 */
	//@Test
	public void testTableName(){		
		for (int i = -50; i <= 50 ; i++) {
			String tableName = DataProcessUtils.generateTableName(i);
			System.out.println(tableName);
		}		
	}
	
	
	
	//测试最大的权限码的值
	/**
		536870912
		1073741824
		-2147483648
		1
	 */
	//@Test
	public void testMaxCode(){
		int i = 1 << 29 ;
		int j = 1 << 30 ;
		int k = 1 << 31 ;
		int l = 1 << 32 ;
		System.out.println(i);
		System.out.println(j);
		System.out.println(k);
		System.out.println(l);
	}
	
	
	//测试工具类方法
	//@Test
	public void testServletPath2(){
		//String s = "/a/b/c";
		//String s = "/a/b/c/3/5";
		//String s = "/test/a/b/c/3/5";
		//servletPath中是不含有请求参数的，所以，不必考虑参数问题
		//String s = "/a/b/c/3/5?param=23";
		String s = "/a/b/c?param=23";
		String cutPath = DataProcessUtils.cutPath(s);
		System.out.println(cutPath);
	}
	
	//测试split()方法分解
	//第一个斜杠前没有数据
	//@Test
	public void testServletPath(){
		String s = "/a/b/c";
		String[] split = s.split("/");
		for (int i = 0; i < split.length; i++) {
			System.out.println("-"+split[i]+"-");			
		}
	}
	
	

	//测试 ：将数组数据转换为字符串形式
	//@Test
	public void test08(){
		String[] strs = new String[]{"1","2","3"};
		String convertParamValues = DataProcessUtils.convertParamValues(strs);
		System.out.println(convertParamValues);
	}
	
	
	//深度赋值测试（用Employee演示）
	//@Test
	public void test07(){
		//public class Employee implements Serializable
		Employee sourceObject = new Employee(123,"TOM",22);
		Employee targetObject = (Employee) DataProcessUtils.deeplyCopy(sourceObject);
		
		System.out.println("sourceObject="+sourceObject);
		System.out.println("targetObject="+targetObject);
		
		System.out.println("sourceObject.hashCode()="+sourceObject.hashCode());
		System.out.println("targetObject.hashCode()="+targetObject.hashCode());
	}
	
	
	//测试祛痘
	//@Test
	public void test06(){
		String temp = "aa,bb,ccc";
		String operator = ",";
		temp = DataProcessUtils.removeComma(temp, operator);
		System.out.println(temp);
	}
	
	
	//@Test
	public void test05(){
		long currentTimeMillis = System.currentTimeMillis();
		long nanoTime = System.nanoTime();
		System.out.println(currentTimeMillis+"=currentTimeMillis");
		System.out.println(nanoTime+"=nanoTime");
	}
	
	//MD5加密
	@Test
	public void test04() throws NoSuchAlgorithmException{
		//String a = "123123"; //4297F44B13955235245B2497399D7A93
		String a = "atguigu"; //D7B79BB6D6F77E6CBB5DF2D0D2478361
		String md5 = DataProcessUtils.md5(a);
		
		System.out.println(md5);
	}
	
	//'@Test
	public void test03() throws NoSuchAlgorithmException{
		String a = "a";
		
		byte[] bytes = a.getBytes();
		
		MessageDigest instance = MessageDigest.getInstance("MD5");
	
		byte[] digest = instance.digest(bytes);
		
		System.out.println(digest.length);
	}
	
	//@Test
	public void test01(){
		
		System.out.println("test01...");
		
	}
	
	//@Test
	public void test02(){
		
		System.out.println("test02...");
		
	}
	
}
