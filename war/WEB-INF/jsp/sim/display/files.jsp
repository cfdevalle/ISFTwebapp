<!-- Archivos JavaScript -->
<script type="text/javascript" src="static/js/sim/desabilitar.js"></script>
<script type="text/javascript" src="static/js/sim/avisosAlUsuario.js"></script>
<script type="text/javascript" src="static/js/sim/mostrarFechaHora.js"></script>
<script type="text/javascript" src="static/js/sim/imprimir.js"></script>
<script type="text/javascript" src="static/js/sim/JQuery.Print.js"></script>
<script type="text/javascript" src="static/js/sim/JQuery.PrintArea.js"></script>
<script type="text/javascript" src="static/js/sim/PDF24.js"></script>
<script type="text/javascript" src="static/js/sim/base64.js"></script>
<script type="text/javascript" src="static/js/sim/jsPDF.js"></script>
<script type="text/javascript" src="static/js/sim/sprintf.js"></script>
<script type="text/javascript" src="static/js/sim/jquery.alerts.js"></script>
<script type="text/javascript" src="static/js/sim/modals.js"></script>
<script type="text/javascript" src="static/js/sim/abmSim.js"></script>

<!-- Archivos CSS -->
<link href="static/css/sim/jquery.alerts.css" rel="stylesheet" type="text/css">
<link href="static/css/sim/avisosAlUsuario.css" rel="stylesheet" type="text/css">
<link href="static/css/sim/bodyStyle.css" rel="stylesheet" type="text/css">

<!-- Archivos Java -->
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.isft.domain.helper.FechaHora"%>
<%@page import="org.isft.domain.Alumnos"%>
<%@page import="org.isft.domain.Carrera"%>

<!-- Archivos JSP -->
<%@include file="../display/modalWindows.jsp" %>

<!-- Libreria TLD -->
<%@ taglib uri="/WEB-INF/tld/taglib.tld" prefix="tag" %>