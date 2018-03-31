package junit.test;

import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.atguigu.survey.component.service.i.EmployeeService;
import com.atguigu.survey.entities.guest.Employee;

/**
 * 测试与IOC容器有关的方法
 * @author zhangyu
 *
 */
public class IOCTest {
	
	//与IOC有关系的在该测试类中进行测试，否则，在NormalTest类中进行测试
	private ApplicationContext ioc = new ClassPathXmlApplicationContext("spring-context.xml");
	private EmployeeService employeeService = ioc.getBean(EmployeeService.class);
	
	
	//============测试声明式事务========================================================
	//①	org.hibernate.HibernateException: No Session found for current thread
	//② 算数异常
	//③ 空指针异常
	//@Test
	public void testTx() throws FileNotFoundException{
			
	}
	
	
	//============测试Service========================================================
	//@Test
	public void testEmployeeServiceUpdateEntity(){
		Employee emp = new Employee(36010,"TTT2",222);
		employeeService.updateEntity(emp);
	}
	
	//@Test
	public void testEmployeeServiceSaveEntity(){
		Employee emp = new Employee(null,"TTT",22);
		employeeService.saveEntity(emp);
	}

	//---------------------------------
	//一个空方法怎么就把表创建出来了呢？
	//@Test
	public void testCreateTable(){}
	
	//---------------------------------
	//@Test
	public void testDataSource() throws SQLException{
		DataSource dataSource = ioc.getBean(DataSource.class);
		Connection connection = dataSource.getConnection();
		System.out.println(connection);
	}
	
	
	
}
