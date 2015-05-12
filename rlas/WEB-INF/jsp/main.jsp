<%@ include file="/WEB-INF/jsp/include.jsp" %>
    <head>
     <link href="/rla/css/rla.css" rel="stylesheet" type="text/css"/>
    </head>
    <body id="page">
    <!-- Codrops top bar -->
            <div class="codrops-top">
                <a href="#">
                    <strong>REZO LEKOL AYISYEN </strong>
                </a>
                <span class="right">
                    <a href="#" onClick="div_show('inscription'); return false;">INSCRIPTION</a>
					<a href="#">INSCRIPTION</a>
					<a href="#">INSCRIPTION</a>
                </span>
                <div class="clr"></div>
            </div><!--/ Codrops top bar -->
            <div class="corps">
    			<co:forEach items="${menus}" var="m" varStatus="i">
					<div class="box">  
						<p><img src="${m.path}"/></p> 
					<div>
					<p class="required"><ft:message key="${m.code}"/></p>
					<co:if test="${i.index eq 0}">
						<ul>
								<co:forEach items="${subMenus0}" var="sub">						
									<li><a href="${sub.url}" class="blue-link"><ft:message key="${sub.code}"/></a></li>
								</co:forEach>
						</ul>
					</co:if>
					<co:if test="${i.index eq 1}">
						<ul>
							<co:forEach items="${subMenus1}" var="sub">						
								<li><a href="${sub.url}" class="blue-link"><ft:message key="${sub.code}"/></a></li>
							</co:forEach>
						</ul>
					</co:if>
					<co:if test="${i.index eq 2}">
						<ul>
							<co:forEach items="${subMenus2}" var="sub">						
								<li><a href="${sub.url}" class="blue-link"><ft:message key="${sub.code}"/></a></li>
							</co:forEach>
						</ul>
					</co:if>
					<co:if test="${i.index eq 3}">
						<ul>
							<co:forEach items="${subMenus3}" var="sub">						
								<li><a href="${sub.url}" class="blue-link"><ft:message key="${sub.code}"/></a></li>
							</co:forEach>
						</ul>
					</co:if>				
				</div>
			</div>
		</co:forEach>
		
		</div>
		 <div class="codrops-bottom">
			 <co:choose>
				<co:when test="${empty currentUser}">
					<a href="?language=en" target="_parent">
							<ft:message key="rla.english"/>
					</a> | 
					<a href="?language=fr" target="_parent">
						<ft:message key="rla.french"/>
					</a> | 
					<a href="?language=kr" target="_parent">
						<ft:message key="rla.creole"/>
					</a>
				</co:when>
				<co:otherwise>
					<co:out value="${currentUser.preferredLanguage}"/>
				</co:otherwise> 
			</co:choose>
		</div>
    </body>
</html>