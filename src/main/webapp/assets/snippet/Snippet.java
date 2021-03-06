package snippet;

public class Snippet {
	
	  <?xml version="1.0" encoding="UTF-8"?> <beans
	  xmlns="http://www.springframework.org/schema/beans"
	  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	  xmlns:security="http://www.springframework.org/schema/security"
	  xmlns:context="http://www.springframework.org/schema/context"
	  xmlns:mvc="http://www.springframework.org/schema/mvc"
	  xsi:schemaLocation="http://www.springframework.org/schema/security
	  http://www.springframework.org/schema/security/spring-security.xsd
	  http://www.springframework.org/schema/mvc
	  http://www.springframework.org/schema/mvc/spring-mvc-4.3.xsd
	  http://www.springframework.org/schema/beans
	  http://www.springframework.org/schema/beans/spring-beans.xsd
	  http://www.springframework.org/schema/context
	  http://www.springframework.org/schema/context/spring-context-4.3.xsd">
	  
	  
	  <bean id="customAccessDenied"
	  class="com.soundcloud.security.CustomAccessDeniedHandler"></bean>
	  
	  <bean id="customLoginSuccess"
	  class="com.soundcloud.security.CustomLoginSuccessHandler"></bean>
	  
	  
	  <bean id="bcryptPasswordEncoder"
	  class="org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder" />
	  
	  <bean id="customUserDetailsService"
	  class="com.soundcloud.security.CustomUserDetailsService"></bean>
	  
	  
	  <security:http>
	  
	  <security:intercept-url pattern="/sample/all" access="permitAll" />
	  
	  <security:intercept-url pattern="/sample/member"
	  access="hasRole('ROLE_MEMBER')" />
	  
	  <security:intercept-url pattern="/sample/admin"
	  access="hasRole('ROLE_ADMIN')" />
	  
	  <security:access-denied-handler ref="customAccessDenied" />
	  
	  <security:form-login login-page="/customLogin"
	  authentication-success-handler-ref="customLoginSuccess" />
	  
	  <!-- <security:csrf disabled="true"/> -->
	  
	  <security:logout logout-url="/customLogout" invalidate-session="true" />
	  
	  <security:remember-me data-source-ref="dataSource"
	  token-validity-seconds="604800" />
	  
	  <security:logout logout-url="/customLogout" invalidate-session="true"
	  delete-cookies="remember-me,JSESSION_ID" />
	  
	  
	  </security:http>
	  
	  
	  <security:authentication-manager> <security:authentication-provider>
	  <security:jdbc-user-service data-source-ref="dataSource"
	  users-by-username-query="select userid , userpw , enabled from tbl_member
	  where userid = ? " authorities-by-username-query="select userid, auth from
	  tbl_member_auth where userid = ? " /> <security:password-encoder
	  ref="bcryptPasswordEncoder" /> </security:authentication-provider>
	  </security:authentication-manager> </beans>
	 
}