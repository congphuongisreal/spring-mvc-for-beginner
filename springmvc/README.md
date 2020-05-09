# spring-mvc-for-beginner
*Ecommerce admin web Application using Spring MVC with multiple modules


* **Technology** : Bootstrap, Java, Spring MVC, Hibernate, JSP, Maven, Postgres, Jquery


#Function

1 User Registeration

2 CRUD

3 Security

4 Validator

# Tool

1. Development Platform - Intellij 

2 Server - Apache Tomcat Server 9

3 Build Tool - maven

4 Database - Postgresql

5 Template - Architect



# Configure 

* Database

  database properties DataSource 

            <bean id="dataSource"
              class="org.springframework.jdbc.datasource.DriverManagerDataSource">
              <property name="driverClassName" value=YOUR DB DRIVER CLASS NAME" />
              <property name="url" value="YOUR DB URL" />
              <property name="username" value="YOUR DB USERNAME" />
              <property name="password" value="YOUR DB PASSWORD" />
            </bean>

      * Database Dialect:

            <prop key="hibernate.dialect">YOUR DB DIALECT</prop>


* Login

             <security:user name="adminn@gmail.com" password="admin"
                                           authorities="ROLE_USER"/>
                            <security:user name="admin@gmail.com" password="admin"
                                           authorities="ROLE_ADMIN"/>
                           