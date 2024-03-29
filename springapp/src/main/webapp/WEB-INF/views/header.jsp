  <header class="mcapp-header">
  <nav role="navigation" class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-header">
          <a href="/springapp/welcome.html" class="navbar-brand mcapp-navbar-brand"><spring:message code="title"></spring:message></a>
          <button id='btnHamburger' type="button" onclick='javascript:hamburger()' class="navbar-toggle pull-left" data-toggle="collapse" data-target=".navbar-collapse">
               <span class="icon-bar mcbar mcbar-sup"></span>
               <span class="icon-bar mcbar mcbar-med"></span>
               <span class="icon-bar mcbar mcbar-inf"></span>
             </button>
      </div>
	  <div id="navbarCollapse" class="collapse navbar-collapse">
		  <security:authorize access="isAnonymous()">
	          <ul class="nav navbar-nav navbar-right">
	              <li><a href="/springapp/registration.html"><i class="fa fa-user-plus fa-lg" aria-hidden="true"></i><spring:message code="header.register"></spring:message></a></li>
	              <li><a href="javascript:showLogin()"><i class="fa fa-user fa-lg" aria-hidden="true"></i><spring:message code="header.login"></spring:message></a></li>
	          </ul>
		  </security:authorize>
		  <security:authorize access="isAuthenticated()">
		      <ul class="nav navbar-nav navbar-left">
              	<li><a href="/springapp/secure/crossword.html"> <spring:message code="crossword.title"></spring:message></a></li>
              	<li><a href="/springapp/secure/wordsearch.html"> <spring:message code="wordsearch.title"></spring:message></a></li>
          	  </ul>
	          <ul class="nav navbar-nav navbar-right">
	              <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user fa-lg" aria-hidden="true"></i> Hola <security:authentication property="principal.username" /></a>
              		  <ul class="dropdown-menu">
              		      <li><a href="/springapp/secure/mypuzzles.html"> <spring:message code="mypuzzles.title"></spring:message></a></li>
              		      <security:authorize access="hasAuthority('ROLE_COLLABORATOR')">
		  	  		  		  <li><a href="/springapp/secure/data.html"><i class="fa fa-database fa-lg" aria-hidden="true"></i> Datos</a></li>
		  		  		  </security:authorize>
              		  	  <security:authorize access="hasAuthority('ROLE_ADMIN')">
		  	  		  		  <li><a href="/springapp/secure/users.html"><i class="fa fa-users fa-lg" aria-hidden="true"></i> Usuarios</a></li>
		  		  		  </security:authorize>
	  	  		      	  <li><a href="javascript:formSubmit()"><i class="fa fa-sign-out fa-lg" aria-hidden="true"></i> Cerrar sesi�n</a></li>
       				  </ul>
	              </li>
	          </ul>
		  </security:authorize>
		  <form:form id="logoutForm" method="POST" modelAttribute="usuarioLogout" commandName="usuarioLogout" action="/springapp/j_spring_security_logout.action" class="form-signin">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	      </form:form>
      </div>
  </nav>
  </header>
  <security:authorize access="isAnonymous()">
	  <div class="modal fade" id="modalLogin" role="dialog">
	    <div class="modal-dialog">
	      <div class="modal-content">
	        <div class="modal-header" style="padding:5px;">
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	        </div>
	        <div class="modal-body" style="padding:40px 50px;">
	          <form:form method="POST" modelAttribute="usuarioLogin" action="/springapp/j_spring_security_check.action">
	            <div class="form-group">
	              <label for="email"><span class="fa fa-user"></span> Usuario</label>
	              <spring:bind path="email">
	                <form:input type="text" class="form-control" id="email" path="email" name="email" placeholder="Introduzca su email"/>
	              </spring:bind>
	            </div>
	            <div class="form-group">
	              <label for="pass"><span class="fa fa-lock"></span> Contrase�a</label>
	              <spring:bind path="password">
	                <form:input type="password" class="form-control" id="pass" name="password" path="password" placeholder="Introduzca su contrase�a"/>
	              </spring:bind>
	            </div>
	            <button type="submit" class="btn btn-success btn-block">Login</button>
	            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	          </form:form>
	        </div>
	        <div class="modal-footer">
	          <p>�No est�s registrado? <a href="/springapp/registration.html">Registrarme</a></p>
	        </div>
	      </div>
	      
	    </div>
	  </div>
  </security:authorize>