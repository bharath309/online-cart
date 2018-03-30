package com.belljava.config;


import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@ComponentScan(basePackages="com.belljava")
@EnableTransactionManagement
public class HibernateConfig {
	private final static String DATABASE_URL="jdbc:postgresql://localhost:5432/postgres";
	private final static String DATABASE_DRIVER="org.postgresql.Driver";
	private final static String DATABASE_DIALECT="org.hibernate.dialect.PostgreSQLDialect";
	private final static String DATABASE_USERNAME="postgres";
	private final static String DATABASE_PASSWORD="Srreddy95";
	
	//dataSource bean will be available
	@Bean
	public DataSource getDataSource() {
		//for DB connection pooling
		BasicDataSource dataSource=new BasicDataSource();
		dataSource.setUrl(DATABASE_URL);
		dataSource.setUsername(DATABASE_USERNAME);
		dataSource.setPassword(DATABASE_PASSWORD);;
		dataSource.setDriverClassName(DATABASE_DRIVER);
		
		return dataSource;
	}
	
	//SessionFactory bean available
	
	@Bean
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder builder=new LocalSessionFactoryBuilder(dataSource);
		builder.addProperties(getHibertnateProperties());
		builder.scanPackages("com.belljava");
		return builder.buildSessionFactory();
		
	}
	//all the hibernate properties will be returned in this method
	private Properties getHibertnateProperties() {
		Properties properties =new Properties();
		properties.put("hibernate.dialect", DATABASE_DIALECT);
		properties.put("hiibernate.show_sql", "true");
		properties.put("hiibernate.format_sql", "true");
		properties.put("hibernate.temp.use_jdbc_metadata_defaults", "false");
		
		return properties;
		
	}
	//transactionManager bean
	@Bean
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		
		return transactionManager;
		
	}
	
	
	

}
