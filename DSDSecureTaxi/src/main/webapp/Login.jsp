<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>


<html:html lang="true">
    <head>
        <title>TS Taxi Secure</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <script src="js/default.js" language="javascript" type="text/javascript"></script>
    </head>

    <body class="login">

        <div class="page-out">
            <div class="page-in">
                <div class="page">
                    <div class="main">
                        <div class="header">
                            <div class="header-top">
                                <h1>TS<span> Taxi Secure</span></h1>
                            </div>
                        </div>

                        <div class="content-top"></div>
 <div class="content">
   <div id="form-login">
       <div id="login-title"> Login de Usuario</div>
        <div id="login-data">
            <html:form action="Login">
                <span id="label-form">Usuario: </span> <html:text property="username" styleId="username" value="Ingresa tu usuario" onblur="UserOnblur();" onfocus="UserOnfocus();"></html:text><br />
                <html:errors property="usu"></html:errors> <br/>
                <span id="label-form"> Clave: </span> <html:password property="pwd" styleId="pwd" value="Ingresa tu password" onblur="PwdOnblur();" onfocus="PwdOnfocus();"></html:password><br />
                <html:errors property="pwd"/>
                <html:errors property="no_existe"/><br />
                <html:submit value="Confirmar" styleId="btn-submit">

                </html:submit>
            </html:form>
        </div>
        <div id="login-comment">
            <div id="secure-img"></div>
            <div id="secure-message">Este es un sitio seguro</div>

        </div>
    </div>
        <div class="presentation">
	<h1 class="title2">Bienvenido al Servicio de Taxi Empresarial!</h1>
        <div id="description">
            <strong>e-Taxi</strong> Es un servicio de Calidad, pensando especialmente la tranquilidad y bienestar de nuestros clientes.<br /><br />
            <p>Viaje de forma segura, rapida y con la comodidad que ofrece la nueva flota de Taxis, con servicios indispensables para que aproveche el tiempo en el trayecto.<br />
    </div>
</div>
 </div>
                        <div class="footer">
                            <p>&copy; Copyright 2010. Designed by <a target="_blank" href="http://www.htmltemplates.net">HTML Templates</a><br /></p>
                            <ul>
                                <li style="border-left: medium none;"><a href="#"><span>Home</span></a></li>
                                <li><a href="#"><span>A cerca de </span></a></li>
                                <li><a href="#"><span>Servicios</span></a></li>
                                <li><a href="#"><span>Contactarse</span></a></li>
                                <li><a href="#"><span>Recursos</span></a></li>
                                <li style="padding-right: 0px;"><a href="#"><span>Accesos</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html:html>
