<%@ include file="/WEB-INF/views/include.jsp" %>

<html lang="es">
<head>
    <%@ include file="/WEB-INF/views/includeFiles.jsp" %>
    <script src="<c:url value="/resources/js/pastime-util.js" />"></script>
        <script src="<c:url value="/resources/js/wordsearch-util.js" />"></script>
    <script src="<c:url value="/resources/js/wordsearch.js" />"></script>
    <title><spring:message code="wordsearch.title"></spring:message></title>
</head>

<body>
	<%@ include file="/WEB-INF/views/header.jsp" %> 
	<div class="container">
  		<div class="panel-group" id="accordion">
    		<div class="panel panel-default">
	      		<div class="panel-heading text-center"># Nueva Sopa de Letras # <button data-toggle="collapse" data-parent="#accordion" href="#collapse-words" id="show" onclick='javascript:expand(showi)' type="button" class="btn btn-default btn-xs pull-right"><i id="showi" class="fa fa-chevron-down"></i></button></div>
	      		<div class="panel-body">
	      			<div class="row">
	      				<div class="col-md-8" align="center"><svg id="svgWS" style="background-color:lightgrey" width="100" height="100"></svg></div>
	          			<div class="col-md-2">
				            <form>
				              <div class="form-group">
				                <label for="input-size">Tama�o</label>
				                <input class="form-control input-sm" id="input-size" type="text" required>
				              </div>
				              <div class = "form-group">
				                <label for="input-words">Palabras</label>
				                <input class="form-control input-sm" id="input-words" type="text" required>
				              </div>
				            </form>
	          			</div>
	        		</div>
	        		<div id="collapse-words" class="panel-collapse collapse">
	      				<div id="panel-info" class="panel-body"></div>
	    			</div>
	    		</div>
	      		<div class="panel-footer" align="center"><button type="button" onclick="javascript:saveWordSearch()" class="btn btn-default"><i class="fa fa-cloud-upload"></i></button> <button type="button" onclick="javascript:newWordSearch()" class="btn btn-default"><i class="fa fa-refresh"></i></button></div>
    		</div>
  		</div>
  	</div>	
</body>
</html>