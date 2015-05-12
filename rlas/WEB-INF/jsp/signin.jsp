<%@ include file="/WEB-INF/jsp/include.jsp" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="ie ie6 no-js" lang="en"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie ie7 no-js" lang="en"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie ie8 no-js" lang="en"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie ie9 no-js" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--><html class="no-js" lang="en"><!--<![endif]-->
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <title>REZO LEKOL AYISYEN </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Fullscreen Background Image Slideshow with CSS3 - A Css-only fullscreen background image slideshow" />
        <meta name="keywords" content="css3, css-only, fullscreen, background, slideshow, images, content" />
        <meta name="author" content="Codrops" />
        <link href="/rla/css/rla.css" rel="stylesheet" type="text/css"/>
    	<script language="javascript1.2" src="/rla/js/slide.js"></script>
    	<script language="javascript1.2" src="/rla/js/rla.js"></script>
        <link rel="shortcut icon" href="../favicon.ico"> 
    </head>
    <body id="page">
        <ul class="cb-slideshow">
            <li><span>Image 01</span></li>
            <li><span>Image 02</span></li>
            <li><span>Image 03</span></li>
            <li><span>Image 04</span></li>
            <li><span>Image 05</span></li>
            <li><span>Image 06</span></li>
        </ul>
		
		<div class="container">
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
		<section>
<aside class="login">
<div class="user-icon-container"><i class="icon128  icomoon-icon-users"></i></div>
<!-- SignIn Form -->
 	
<form method="post" action="/rla/j_spring_security_check" id="contact">
<table>
	<tr>
		
		<td>
			<h1><ft:message key="rla.connect"/></h1>
		</td>
	</tr>
		<tr style="${empty error?'display:none':'display:inline'}">
			<td class="error"><co:out value="${error}"/></td>
		</tr>
	<tr>
		<td>
			<input type="text" id="username" name="j_username" tabindex="1" autofocus  autocomplete="off" placeholder="Put your Username here..."/>
		</td>
	</tr>
	<tr>
		<td>
			<input type="password" id="password" name="j_password" tabindex="2"  autocomplete="off" placeholder="Password"/>
		</td>
	</tr>
	
	<tr>
		<td><input type="checkbox"  id="r" tabindex="3"><label for="r">Remember me</label> &nbsp; &nbsp; &nbsp;<a href="#" onClick="div_show('popup'); return false;">Forgot Your Password?</a></td>
	</tr>
	<tr>
		<td>
			<input id="submit" type="submit" value="<ft:message key="rla.login"/>" tabindex="4">
		</td>
	</tr>
	</table>

</form>
</aside>
</div>
			<div id="popup" style="display: none;">
			<div id="popupMessage">
				<form action="#" id="form" method="post" name="form">
					<img id="close" src="/rla/ico/hide.png" onclick ="div_hide('popup')">
						<h2>Fogot your password?</h2>
						You can use this form to recover your password if you have forgotten it.<br>
						Please enter your email address below to get started..
					<table>
						<tr>
							<td><input id="email" type="text" placeholder="Put your Email here..."/></td>
						</tr>
						<tr>
							<td><input id="submit" type="submit" value="RESET MY PASSWORD">
							</td>
						</tr>
					</table>	
					</form>
			</div>
		</div>		
		
		<div id="inscription" style="display: none;">
			<div id="popupMessage">
				<form action="#" id="form" method="post" name="form">
					<img id="close" src="/rla/ico/hide.png" onclick ="div_hide('inscription')">
						<h2>INSCRIPTION FORM</h2>
					<table>
						<tr>
							<td><input id="name" type="text" placeholder="Put your Name here..."/></td>
						</tr>
						<tr>
							<td><input id="email" type="text" placeholder="Put your Email here..."/></td>
						</tr>
						<tr>
							<td><input id="phone" type="phone" placeholder="Put your Phone here..."/></td>
						</tr>
						<tr>
							<td><input id="birth" type="date" placeholder="Put your Bitrhday here..."/></td>
						</tr>
						<tr>
							<td><input id="submit" type="submit" value="SEND">
							</td>
						</tr>
					</table>	
					</form>
			</div>
		</div>		
           <div class="footer">
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